#include "typedefs.hpp"
#include "hipr.hpp"


int main(int argc, char **argv){

	// Define the input data path;
	string path_prefix;
	if(argc>1) path_prefix = argv[1];
	else       path_prefix = "./src/rendering";

	// Instantiate a pr class;
	hipr pr_inst(path_prefix);

	pr_inst.init_pragma();
	pr_inst.init_connect();
	pr_inst.init_tile();
	pr_inst.init_dfx();

	pr_inst.SimulatedAnnealing();

	// pr_inst.print_connect();
	// pr_inst.print_pragma();
	// pr_inst.print_tile();
	pr_inst.print_dfx();
	pr_inst.gen_xdc();



	cout << "Done!" << endl;
	return SUCCESS;
}
