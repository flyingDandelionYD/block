//
//  main.m
//  06.block类型copy的作用
//

//

#import <Foundation/Foundation.h>

void (^globalBlock)(void);
void (^mallocBlock)(void);

void test(){
    globalBlock = [^{
        NSLog(@"没有访问auto变量");
    } copy];// __NSStackBlock__ 调用copy 转化为__NSMallocBlock__
    
    int a = 10;
    mallocBlock =[[^{
        NSLog(@"a=%d",a);
    } copy] copy]; // __NSMallocBlock__ 调用copy
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
        for (int i=0; i<10; i++) {
            NSLog(@"i=%d",i);
        }
        globalBlock();
        mallocBlock();
        NSLog(@"%@",[globalBlock class]);
        NSLog(@"%@",[mallocBlock class]);
       
    }
    return 0;
}
