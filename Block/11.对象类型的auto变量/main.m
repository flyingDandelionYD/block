//
//  main.m
//  11.对象类型的auto变量
//

//

#import <Foundation/Foundation.h>
#import "myPerson.h"

typedef void (^myBlock)(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myBlock block;
//        {
//           myPerson *person = [[myPerson alloc]init];
//           person.age = 18;
//           block = ^{
//                NSLog(@"person.age = %d",person.age);
//            };
//            block();
//            NSLog(@"%@",[block class]);
//        }
//        NSLog(@"end1");
        
        
//        {
//            myPerson *person = [[myPerson alloc]init];
//            person.age = 10;
//            NSLog(@"%@",[^{
//              NSLog(@"person = %d",person.age);
//            } class]);
//        }
//        NSLog(@"end");
    
        
        {
            myPerson *person = [[myPerson alloc]init];
            person.age = 10;
            __weak myPerson *weakPerson = person;
            block = ^{
                NSLog(@"person = %d",weakPerson.age);
            };
            block();
        }
        NSLog(@"end");
    }
    return 0;
}


