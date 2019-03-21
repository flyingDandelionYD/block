//
//  ViewController.m
//  block2
//

//

#import "ViewController.h"
#import "myPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

/*
//GCD传进去的block会进行copy操作（ARC）--->堆上  ，强引用访问外面的person对象 ，1s之后block死亡
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    myPerson *person = [myPerson new];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"person = %@",person);
    });
    NSLog(@"end");
}
*/

/*
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
     myPerson *person = [myPerson new];
    __weak myPerson *weakP = person;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"person = %@",weakP);
    });
    NSLog(@"end");
}
 */


/*
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    myPerson *person = [myPerson new];
    __weak myPerson *weakP = person;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"person1 = %@",weakP);
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
             NSLog(@"person2 = %@",person);
        });
    });
    NSLog(@"end");
}
*/


//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    myPerson *person = [myPerson new];
//    __weak myPerson *weakP = person;
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"person1 = %@",person);
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            NSLog(@"person2 = %@",weakP);
//        });
//    });
//    NSLog(@"end");
//}


//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    myPerson *p = [[myPerson alloc]init];
//    __weak myPerson *weakP = p;
//    p.block = ^{
//        __strong  myPerson *p = weakP;
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//            [NSThread sleepForTimeInterval:5];
//            NSLog(@"%@",p);
//            [p  run];
//        });
//    };
//    p.block();
//    NSLog(@"End");
//}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    myPerson *p = [[myPerson alloc]init];
    __weak myPerson *weakP = p;
    p.block = ^{
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [NSThread sleepForTimeInterval:5];
            NSLog(@"%@",weakP);
            [weakP  run];
        });
    };
    p.block();
    NSLog(@"End");
}
@end
