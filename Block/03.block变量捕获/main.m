//
//  main.m
//  03.block变量捕获
//

//

#import <Foundation/Foundation.h>

double height = 175;//全局变量（不会捕获的，而是传进去的是变量名，然后用到的时候是 直接访问的）

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int age = 20;//auto变量的捕获 -->自动变量，离开作用域就销毁
        static NSString *name = @"Jack"; //static 此时传递的是变量的地址值
        
        void (^myBlock)(void) = ^(void){
            NSLog(@"block内部age =%d",age);
            NSLog(@"block内部name = %@",name);
            NSLog(@"block内部height = %f",height);
        };
        
        age = 30;
        NSLog(@"外age =%d",age);
        name = @"Lucy";
        height = 180;
        NSLog(@"外height = %f",height);
        myBlock();
        
    }
    return 0;
}
