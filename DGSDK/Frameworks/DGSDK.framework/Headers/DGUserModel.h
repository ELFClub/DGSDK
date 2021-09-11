//
//  DGUserModel.h
//  
//

#import <Foundation/Foundation.h>
#import "DGSDKDefines.h"

@interface DGUserBaseModel : NSObject

//用户信息
@property (nonatomic, strong) NSString *uid;
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *token;
@property (nonatomic, strong) NSString *cookie;
@property (nonatomic, assign) Boolean isBindEmail;
@property (nonatomic, assign) DGLoginType loginType;

- (Boolean)isQLUser;

@end

@interface DGUserModel : DGUserBaseModel


//角色信息
@property (nonatomic, strong) NSString *serverId;
@property (nonatomic, strong) NSString *roleId;
@property (nonatomic, strong) NSString *roleName;
@property (nonatomic, strong) NSString *roleLevel;
@property (nonatomic, strong) NSString *roleCoin;
@property (nonatomic, strong) NSString *roleMoney;

@end
