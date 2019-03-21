//
//  main.m
//  14._ _block细节
//

//

#import <Foundation/Foundation.h>
struct __block_impl {
    void *isa;
    int Flags;
    int Reserved;
    void *FuncPtr;
};

struct __main_block_desc_0 {
    size_t reserved;
    size_t Block_size;
};

struct __Block_byref_age_0 {
    void *__isa; // 8
    struct __Block_byref_age_0 *__forwarding; //8
    int __flags; //4
    int __size; //4
    int age;
};

struct __main_block_impl_0 {
    struct __block_impl impl;
    struct __main_block_desc_0* Desc;
    struct __Block_byref_age_0 *age; // by ref
};

typedef void(^myBlock)(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int age = 10;
        myBlock block = ^{
            age = 20;
            NSLog(@"%d",age);
        };
        block();
        
        struct __main_block_impl_0 *blockImpl = (__bridge struct __main_block_impl_0*)block;
        NSLog(@"%p",&age);
        NSLog(@"End");
    }
    return 0;
}
