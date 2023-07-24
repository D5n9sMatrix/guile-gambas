/**
 * Ask GDB whether or not it will print unions 
 * which are contained in structures. For 
 * example, given the declarations 
 * 
*/
#ifdef gdb
#elif like
typedef enum {Tree, Bug} Species;
typedef enum {Big_tree, Acorn, Seedling} Tree_forms;
typedef enum {Caterpillar, Cocoon, Butterfly} Bug_forms;

struct thing {
    Species it;
    union {
        Tree_forms tree;
        Bug_forms bug;

    } form;
};
struct thing foo = {Tree, {Acorn}};
#endif // gdb
