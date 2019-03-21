//
//  main.m
//  17.循环引用
//

//

#import <Foundation/Foundation.h>
#import "myPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        myPerson *p = [[myPerson alloc]init];
//        p.block = ^{
//            NSLog(@"%@",p);
//        };
//        NSLog(@"End");
        
//        myPerson *p = [[myPerson alloc]init];
//        __weak myPerson *weakP = p;
//        p.block = ^{
//            NSLog(@"%@",weakP);
//        };
//        NSLog(@"End");
        
       
//        myPerson *p = [[myPerson alloc]init];
//        __weak typeof(p) weakP = p;
//        p.block = ^{
//            NSLog(@"%@",weakP);
//        };
//        NSLog(@"End");
        
        
//        myPerson *p = [[myPerson alloc]init];
//        __unsafe_unretained  myPerson * weakP = p;
//        p.block = ^{
//            NSLog(@"%@",weakP);
//        };
//        NSLog(@"End");

        
        myPerson *p = [[myPerson alloc]init];
        __block  myPerson * weakP = p;
        p.block = ^{
            NSLog(@"%@",weakP);
            weakP = nil;
        };
        p.block();
        NSLog(@"End");
    }
    return 0;
}
