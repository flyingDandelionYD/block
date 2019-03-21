//
//  main.m
//  13.__block的使用2
//

//

#import <Foundation/Foundation.h>
typedef void(^myBlock)(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray array];
        myBlock block = ^{
            [arr addObject:@"1"];
            [arr addObject:@"2"];
        };
        block();
        NSLog(@"arr = %@",arr);
    }
    return 0;
}
