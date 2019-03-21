//
//  myPerson.h
//  17.循环引用
//

//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^myBlock)(void);
@interface myPerson : NSObject
@property(nonatomic,copy)myBlock block;
@end

NS_ASSUME_NONNULL_END
