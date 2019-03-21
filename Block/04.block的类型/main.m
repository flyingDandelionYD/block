//
//  main.m
//  04.block的类型
//

//

#import <Foundation/Foundation.h>
double height = 180;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^block1)(void) = ^{
            NSLog(@"Hello");
         };
        
        int age = 10;
        void (^block2)(void) = ^{
            NSLog(@"Hello - %d", age);
        };
        
        NSLog(@"%@ %@ %@", [block1 class], [block2 class], [^{
            NSLog(@"%d", age);
        } class]);
        
        NSLog(@"%@",[[^{
            NSLog(@"%d", age);
        } copy] class]);
        
        NSLog(@"%@",[^{
            NSLog(@"%f", height);
        } class]);
        
        NSLog(@"%@",[[^{
            NSLog(@"%f", height);
        }copy] class]);
    }
    return 0;
}

