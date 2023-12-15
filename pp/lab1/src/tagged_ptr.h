template <typename T>
struct tagged_ptr {
public:
    T *ptr;
    unsigned int tag;

    T * operator->() {return ptr;}
};