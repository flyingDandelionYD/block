//
//  main.m
//  16.__block修饰的对象类型
//

//

#import <Foundation/Foundation.h>

@interface myPerson:NSObject
@end
@implementation myPerson
@end

typedef void(^myBlock)(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myPerson *p = [[myPerson alloc]init];
        __block __weak myPerson *weakP = p;
        
        myBlock blcok = ^{
            NSLog(@"person = %@",weakP);
        };
        blcok();

    }
    return 0;
}
