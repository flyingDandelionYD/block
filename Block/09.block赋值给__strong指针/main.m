//
//  main.m
//  09.block赋值给__strong指针
//

//

#import <Foundation/Foundation.h>
typedef void (^MyBlock)(void);

@interface myObject :NSObject
@property(nonatomic,strong)MyBlock  myBlock;
@end

@implementation myObject
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myObject *obj = [[myObject alloc]init];
        int a = 10;
        obj.myBlock = ^{
            NSLog(@"----%d",a);
        };
        NSLog(@"%@",[obj.myBlock class]);
    }
    return 0;
}
