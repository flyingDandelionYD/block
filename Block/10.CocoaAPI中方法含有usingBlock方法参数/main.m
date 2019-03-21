//
//  main.m
//  10.CocoaAPI中方法含有usingBlock方法参数
//

//

#import <Foundation/Foundation.h>

typedef  void (^myBlock)(id obj, NSUInteger idx, BOOL *stop);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@"a",@"b",@"c",@"d"];
        __block myBlock block1 ;
        myBlock  block = ^(id obj, NSUInteger idx, BOOL *stop){
            NSLog(@"obj=>%@  index=%lu",obj,(unsigned long)idx);
            if(idx == 1){
                *stop = YES;
                NSLog(@"%@",[block1 class]);
            }
        };
        block1 = block;
        [arr enumerateObjectsUsingBlock:block];
    }
    return 0;
}
