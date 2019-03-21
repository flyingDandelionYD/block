//
//  main.m
//  07.数据存储位置
//

//

#import <Foundation/Foundation.h>

@interface myObject : NSObject
@end

@implementation myObject
@end

int age = 10;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 10;
        NSLog(@"数据段：age %p", &age);
        NSLog(@"栈：a %p", &a);
        NSLog(@"堆：obj %p", [[NSObject alloc] init]);
        NSLog(@"数据段：class %p", [myObject class]);

    }
    return 0;
}
