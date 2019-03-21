//
//  main.m
//  05.blcok的类型2
//

//

#import <Foundation/Foundation.h>

void (^block)(void);


//void test(){
//    int a = 10;
//    block = ^{
//        NSLog(@"block---------%d", a);
//    };
//}


void test(){
    int a = 10;
    block = [^{
        NSLog(@"block---------%d", a);
    } copy];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
        for (int i=0; i<10; i++) {
            NSLog(@"%d",i);
        }
        block();
        NSLog(@"%@",[block class]);
    }
    return 0;
}
