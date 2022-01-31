#include "typedefs.hpp"
#include "hipr.hpp"

double e=1e-16,at=0.99999999,T=1;
int L = TRIAL_NUM;


hipr::hipr(string path_prefix, string device_name){
	pragma_path     = path_prefix + "/pragma.txt";
	dfx_path        = path_prefix + "/dfx.txt";
	connect_path    = path_prefix + "/connect.txt";
	tile_path       = "./src/arch/"+device_name+".txt";
	xdc_path        = path_prefix + "/sub.xdc";
}


void hipr::init_pragma(void){
	const char *cstr = pragma_path.c_str();
	ifstream myfile;
	myfile.open(cstr);
	int i=0;
	pragma t;
	while(myfile >> t.name >> t.lut >> t.ff >> t.bram18 >> t.dsp2){
		t.i=i++;
		pragmas.push_back(t);
	}
	myfile.close();
}

void hipr::init_connect(void){
	const char *cstr = connect_path.c_str();
	ifstream myfile;
	myfile.open(cstr);
	connect t;
	int i=0;
	while(myfile >> t.src >> t.dest){
		t.i = i++;
		connects.push_back(t);
	}
	myfile.close();
}


void hipr::init_tile(void){
	const char *cstr = tile_path.c_str();
	ifstream myfile;
	myfile.open(cstr);
	int i=0;
	tile t;
	while(myfile >> t.tile_l >> t.x_l >> t.tile_r >> t.x_r){
		t.i=i++;
		tiles.push_back(t);
	}
	myfile.close();
}

void hipr::init_dfx(void){
	const char *cstr = dfx_path.c_str();
	ifstream myfile;
	myfile.open(cstr);
	int i=0;
	dfx t;
	while(myfile >> t.name >> t.lut >> t.ff >> t.bram18 >> t.dsp2){
		t.lut    *= pragmas[i].lut;
		t.ff     *= pragmas[i].ff;
		t.bram18 *= pragmas[i].bram18;
		t.dsp2   *= pragmas[i].dsp2;
		t.i=i++;
		t.row = rand()%MAX_ROW;
		t.start = rand()%tiles.size();
		t.end = t.start;
		this->find_tile_range(t);
		dfxs.push_back(t);
	}
	myfile.close();
}


res_range hipr::find_resource_range(string res_type, int start_tile, int end_tile){
	res_range out;
	for(int i=start_tile; i<end_tile+1; i++){
		if(tiles[i].tile_l == res_type) { out.start = tiles[i].x_l; out.valid = true; break; }
		if(tiles[i].tile_r == res_type) { out.start = tiles[i].x_r; out.valid = true; break; }
	}

	for(int i=start_tile; i<end_tile+1; i++){
		if(tiles[i].tile_l == res_type) { out.end = tiles[i].x_l; }
		if(tiles[i].tile_r == res_type) { out.end = tiles[i].x_r; }
	}
	return out;
}


void hipr::gen_xdc(void){
	const char *cstr = xdc_path.c_str();
	ofstream myfile;
	myfile.open (cstr);

	for(uint i=0; i<dfxs.size(); i++){
		res_range out;
		myfile << "\n\ncreate_pblock " << dfxs[i].name << endl;
		out = find_resource_range("CLB", dfxs[i].start, dfxs[i].end);
		if (out.valid){
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {SLICE_X";
			myfile << out.start << "Y" << 65+dfxs[i].row*60 << ":SLICE_X" << out.end << "Y" << 119+dfxs[i].row*60 << "}" << endl;
		}

		out = find_resource_range("EMPTY_CLB", dfxs[i].start, dfxs[i].end);
		if (out.valid){
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {SLICE_X";
			myfile << out.start << "Y" << 65+dfxs[i].row*60 << ":SLICE_X" << out.end << "Y" << 119+dfxs[i].row*60 << "}" << endl;
		}

		out = find_resource_range("DSP2", dfxs[i].start, dfxs[i].end);
		if (out.valid){
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {DSP48E2_X";
			myfile << out.start << "Y" << 20+dfxs[i].row*24 << ":DSP48E2_X" << out.end << "Y" << 41+dfxs[i].row*24 << "}" << endl;
		}

		out = find_resource_range("EMPTY_DSP2", dfxs[i].start, dfxs[i].end);
		if (out.valid){
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {DSP48E2_X";
			myfile << out.start << "Y" << 20+dfxs[i].row*24 << ":DSP48E2_X" << out.end << "Y" << 41+dfxs[i].row*24 << "}" << endl;
		}


		out = find_resource_range("BRAM18", dfxs[i].start, dfxs[i].end);
		if (out.valid) {
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {RAMB18_X";
			myfile << out.start << "Y" << 26+dfxs[i].row*24 << ":RAMB18_X" << out.end << "Y" << 47+dfxs[i].row*24 << "}" << endl;
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {RAMB36_X";
			myfile << out.start << "Y" << 13+dfxs[i].row*12 << ":RAMB36_X" << out.end << "Y" << 23+dfxs[i].row*12 << "}" << endl;
		}

		out = find_resource_range("EMPTY_BRAM18", dfxs[i].start, dfxs[i].end);
		if (out.valid) {
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {RAMB18_X";
			myfile << out.start << "Y" << 26+dfxs[i].row*24 << ":RAMB18_X" << out.end << "Y" << 47+dfxs[i].row*24 << "}" << endl;
			myfile << "resize_pblock [get_pblocks " << dfxs[i].name << "] -add {RAMB36_X";
			myfile << out.start << "Y" << 13+dfxs[i].row*12 << ":RAMB36_X" << out.end << "Y" << 23+dfxs[i].row*12 << "}" << endl;
		}
		myfile << "set_property SNAPPING_MODE ON [get_pblocks " << dfxs[i].name << "]" << endl;
		myfile << "set_property IS_SOFT TRUE [get_pblocks " << dfxs[i].name << "]" << endl;
		myfile << "add_cells_to_pblock [get_pblocks " << dfxs[i].name;
		myfile << "] [get_cells -quiet [list level0_i/ulp/ydma_1/mono_inst/" << dfxs[i].name << "_inst]]" << endl;
	}
	myfile.close();
}



void hipr::print_pragma(void){
	cout << "\n\n============ pragma" << endl;
	for(uint i=0; i<pragmas.size(); i++){
		cout << pragmas[i].i << ": " ;
		cout << std::left << std::setw (20) << pragmas[i].name;
		cout << std::setw (4) << pragmas[i].lut;
		cout << std::setw (4) << pragmas[i].ff;
		cout << std::setw (4) << pragmas[i].bram18;
		cout << std::setw (4) << pragmas[i].dsp2 << endl;
	}
	cout << "============ end of pragma\n\n" << endl;
}


void hipr::print_connect(void){
	cout << "\n\n============ connect" << endl;
	for(uint i=0; i<connects.size(); i++){
		cout << connects[i].i << ": " << std::left << std::setw (18);
		cout << connects[i].src << " => " << connects[i].dest << endl;
	}
	cout << "============ end of connect\n\n" << endl;
}

void hipr::print_tile(void){
	cout << "\n\n============ tile" << endl;
	for(uint i=0; i<tiles.size(); i++){
		cout << tiles[i].i << ": ";
		cout << tiles[i].tile_l << " " << tiles[i].x_l;
		cout << " " << tiles[i].tile_r << " " << tiles[i].x_r << endl;
	}
	cout << "============ end of tile\n\n" << endl;

}

void hipr::print_dfx(void){
	cout << "\n\n============ dfx" << endl;
	cout << "#: operator          LUTs   FFs    BRAM18 DSP    row start end " << endl;
	for(uint i=0; i<dfxs.size(); i++){
		cout << dfxs[i].i << ": " << std::left << std::setw (18);
		cout << dfxs[i].name;
		cout << std::setw (7) << dfxs[i].lut;
		cout << std::setw (7) << dfxs[i].ff;
		cout << std::setw (7) << dfxs[i].bram18;
		cout << std::setw (7) << dfxs[i].dsp2;
		cout << std::setw (4) << dfxs[i].row;
		cout << std::setw (6) << dfxs[i].start;
		cout << std::setw (4) << dfxs[i].end << endl;
	}
	cout << "============ end of dfx\n\n" << endl;
}

void hipr::print_seq(void){
	for(uint i=0; i<dfxs.size(); i++){ cout << dfxs[i].i << " "; }
	cout << endl;
}

void hipr::floorplan(void){
	for(uint i=0; i<dfxs.size(); i++){
		this->find_tile_range(dfxs[i]);
	}
}

void hipr::find_tile_range(dfx & op, bool debug){
	tile_range out;
	dfx still_need;
	if(debug) cout << "\n======================" << op.name << endl;
	out.start = op.start;
	uint start_tile = op.start;
	uint start_row  = op.row;
	still_need = op;
	int offset = 0;
	while(still_need.lut > 0 || still_need.bram18>0 || still_need.dsp2>0){

		if(debug) cout << offset << endl;
		if(tiles[start_tile+offset].tile_l == "CLB")    { still_need.lut    -= num_per_tile.lut; }
		if(tiles[start_tile+offset].tile_l == "BRAM18") { still_need.bram18 -= num_per_tile.bram18; }
		if(tiles[start_tile+offset].tile_l == "DSP2")   { still_need.dsp2   -= num_per_tile.dsp2; }
		if(tiles[start_tile+offset].tile_r == "CLB")    { still_need.lut    -= num_per_tile.lut; }
		if(tiles[start_tile+offset].tile_r == "BRAM18") { still_need.bram18 -= num_per_tile.bram18; }
		if(tiles[start_tile+offset].tile_r == "DSP2")   { still_need.dsp2   -= num_per_tile.dsp2; }
		if(debug) cout << "clb=" << still_need.lut;
		if(debug) cout << "bram2=" << still_need.bram18;
		if(debug) cout << "dsp2=" << still_need.dsp2 << endl;
		if(debug) cout << "start_tile=" << start_tile << " offset=" << offset << " start_tile+offset=" << start_tile+offset << endl;
		offset++;

		// if resources are all used, go to the upper row
		if(start_tile+offset >= tiles.size()){
			still_need = op; // reset the resources needed
			offset = 0;
			start_row++;
			if(start_row == MAX_ROW){ start_row = 0; }
			start_tile = 0;
		}

		// test for unusable area
		// overlapping configuration area
		if((start_row==0 || start_row==3) &&
		   (( start_tile<=68 && 68<=start_tile+offset-1) || ( start_tile<=70 && 70<=start_tile+offset-1))
		){
			still_need = op; // reset the resources needed
			offset = 0;
			start_tile = 71;
		}

		// test for unusable area
		// Overlapping with firmware area
		if((start_row==2 || start_row==3) &&
		   (( start_tile<=108 && 108<=start_tile+offset-1) || ( start_tile<=125 && 125<=start_tile+offset-1))
		){
			still_need = op;
			offset = 0;
			start_row++;
			if(start_row == MAX_ROW){ start_row = 0; }
			start_tile = 0;
		}
	}

	out.row = start_row;
	out.start = start_tile;
	//deliberately include one more tiles to avoid partition reduce usable IPs
	if(start_tile+offset == tiles.size()){
		out.end = start_tile+offset-1; // decrease by 1 if it reaches the right boundary
	}else{
		out.end = start_tile+offset;
	}
	op.start = out.start;
	op.end   = out.end;
	op.row   = out.row;
}

double hipr::return_total_dest(void){
	double x1, y1;
	double x2, y2;
	double out = 0;
	for(uint i=0; i<connects.size(); i++){
		for(uint j=0; j<dfxs.size(); j++){
			if(dfxs[j].name == connects[i].src || "DMA" == connects[i].src){
				x1 = dfxs[j].start;
				y1 = dfxs[j].row;

			}

			if(dfxs[j].name == connects[i].dest){
				x2 = dfxs[j].start;
				y2 = dfxs[j].row;
			}
			if("DMA" == connects[i].src){
				x1 = 0;
				y1 = 0;
				out += 3*(W_HORIZONTAL*((x1-x2)*(x1-x2))+W_VERTICAL*((y1-y2)*(y1-y2)));
			}else if("DMA" == connects[i].dest){
				x2 = 0;
				y2 = 0;
				out += 3*(W_HORIZONTAL*((x1-x2)*(x1-x2))+W_VERTICAL*((y1-y2)*(y1-y2)));
			}else{
				out += W_HORIZONTAL*((x1-x2)*(x1-x2))+W_VERTICAL*((y1-y2)*(y1-y2));
			}
		}

	}

	out = out/connects.size();
	return out;
}



double hipr::cost_function(bool debug){
	double cost = 0;
	vector <double> cost_table[7];
	for (int i=0; i<7; i++){
		for (uint j=0; j<tiles.size(); j++){
			cost_table[i].push_back(0);
		}
	}

	for(uint i=0; i<dfxs.size(); i++){
		for(int j=dfxs[i].start; j<dfxs[i].end+1; j++){
			cost_table[dfxs[i].row][j]++;
		}
	}


	// test for overlapping
	int overlap = 0;
	for(int i=0; i<7; i++){
		for(uint j=0; j<tiles.size(); j++){
			if(cost_table[i][j] > 1){
				overlap = overlap + cost_table[i][j] - 1;
			}
		}
	}

	// test for unusable areas
	int invalid_area = 0;
	for(int i=0; i<7; i++){
		for(uint j=0; j<tiles.size(); j++){
			// configuration area overlap violation
			if((i==0 || i==3)&&(j>=68 && j<=70)) { if(cost_table[i][j] > 0) { invalid_area++; } }
			// firmware overlap violation
			if((i==2 || i==3)&&(j>=108 && j<=125)) { if(cost_table[i][j] > 0) { invalid_area++; } }
		}
	}

	if(debug) cout << "invalid_area=" << invalid_area << endl;



	cost = overlap+invalid_area + this->return_total_dest()*W_DEST;
	if(debug) cout << "overlay = " << overlap << " invalid_area=" << invalid_area << endl;
	return cost;
}


void hipr::SimulatedAnnealing(bool debug){
	double accept = 0;
	double cost_min = 100000000;
	double cost;
	this->floorplan();
	cost_min = this->cost_function();
	if(debug) cout << "init_cost = " << this->cost_function() << endl;

	while(L--){
		if(L%1000==0) cout << "L = " << L << endl;
		int func_index1 = rand()%dfxs.size();

		dfx op_backup = dfxs[func_index1];

		dfxs[func_index1].row   = rand()%MAX_ROW;
		dfxs[func_index1].start = rand()%tiles.size();
		this->find_tile_range(dfxs[func_index1]);

		if(debug) cout << "L = " << L << ": ";
		this->floorplan();
		cost = this->cost_function();

		double df = cost - cost_min;
		double sj=rand()%10000;     //sj belogs to [0 1]
		sj/=10000;


		if( (df < 0)) { // if the cost is decreased, accept the swap
			cost_min = cost;
		} else if(exp(-df/T)>sj){ // accept the results based on some possibility
			cost_min = cost;
			accept++;
		} else {
			dfxs[func_index1] = op_backup;
		}
		if(debug) cout << "cost = " << cost;
		cout << " cost_min = " << cost_min << endl;

		if(debug) this->print_seq();
		if(cost_min < COST_REQ) break;
		T*=at;  // temperature decrease
		if(T<e) break;  //Exit when temperature is small enough
	}


	cout << " cost_min = " << cost_min << endl;
	cout << "accept ratio = " << accept/TRIAL_NUM << endl;
}







