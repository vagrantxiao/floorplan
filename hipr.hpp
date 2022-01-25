#include "typedefs.hpp"

class hipr{
public:
	string          pragma_path;
	string          dfx_path;
	string          connect_path;
	string          tile_path;
	string          xdc_path;
	vector<connect> connects;
	vector<pragma>  pragmas;
	vector<tile>    tiles;
	vector<dfx>      dfxs;
	res_per_tile num_per_tile = {432, 22, 22};

	hipr(string path_prefix);

	void init_pragma(void);
	void init_connect(void);
	void init_tile(void);
	void init_dfx(void);
	void gen_xdc(void);

	void print_connect(void);
	void print_pragma(void);
	void print_tile(void);
	void print_dfx(void);

	double return_total_dest(void);
	double cost_function(bool debug=false);
	void find_tile_range(dfx & op, bool debug=false);
	res_range find_resource_range(string res_type, int start_tile, int end_tile);
	void floorplan(void);
	void SimulatedAnnealing(bool debug=false);
	void print_seq(void);
};


