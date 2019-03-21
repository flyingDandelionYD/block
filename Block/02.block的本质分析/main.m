//
//  main.m
//  02.block的本质分析
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
//xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc main.m  -o main.cpp
