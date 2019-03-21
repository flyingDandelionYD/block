//
//  myPerson.m
//  17.循环引用
//

//

#import "myPerson.h"

@implementation myPerson
-(void)dealloc{
    NSLog(@"%s",__FUNCTION__);
}
@end
