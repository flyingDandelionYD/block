//
//  myPerson.h
//  block2
//

//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^myBlock)(void);
@interface myPerson : NSObject
@property(nonatomic,copy)myBlock block;
-(void)run;
@end

NS_ASSUME_NONNULL_END
