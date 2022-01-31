#include "typedefs.hpp"
#include "hipr.hpp"


int main(int argc, char **argv){

	// Define the input data path;
	string path_prefix, device;
	if(argc>1){\
		path_prefix = argv[1];
		device = argv[2];
	}
	else{
		path_prefix = "./src/rendering";
		device = "zcu102";
	}

	// Instantiate a pr class;
	hipr pr_inst(path_prefix, device);

	pr_inst.SimulatedAnnealing();

	pr_inst.print_invalid();
	// pr_inst.print_connect();
	// pr_inst.print_pragma();
	// pr_inst.print_tile();
	pr_inst.print_dfx();
	pr_inst.gen_xdc();



	cout << "Done!" << endl;
	return SUCCESS;
}
