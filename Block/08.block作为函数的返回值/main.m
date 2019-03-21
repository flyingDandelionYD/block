//
//  main.m
//  08.block作为函数的返回值
//

//

#import <Foundation/Foundation.h>

typedef void (^MyBlock)(void);
MyBlock myblock()
{
    int a = 10;
    MyBlock block = ^{
        NSLog(@"---------%d", a);
    };//block类型应为__NSStackBlock__
    return block;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyBlock block = myblock();
        block();// ---------10
        NSLog(@"%@",[block class]);//__NSMallocBlock__
    }
    return 0;
}

