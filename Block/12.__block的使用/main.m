//
//  main.m
//  12.__block的使用
//

//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      __block int age = 10;
        void (^myBlock)(void) = ^{
            age = 20;
            NSLog(@"age = %d",age);
        };
        myBlock();
        NSLog(@"age = %d",age);
    }
    return 0;
}
