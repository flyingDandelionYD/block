//
//  main.m
//  01.block的基本使用
//

//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int  age = 10;
        void (^myBlock)(int,int) =^(int a,int b){
            NSLog(@"age=>%d",age);
            NSLog(@"a=%d",a);
            NSLog(@"b=%d",b);
        };
        age = 20;
        myBlock(20,30);
        NSLog(@"age=>%d",age);
    }
    return 0;
}


