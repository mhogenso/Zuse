#import <Foundation/Foundation.h>

@interface ZSProject : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *version;
@property (nonatomic, strong) UIImage *screenshot;
@property (nonatomic, strong, readonly) NSString *identifier;
@property (nonatomic, assign) NSInteger commitNumber;

+ (ZSProject *)projectWithFile:(NSString *)name;
+ (ZSProject *)projectWithJSON:(NSDictionary *)JSON;

- (id)init;
- (id)initWithJSON:(NSDictionary *)JSON;
- (id)initWithFile:(NSString *)name;
- (NSMutableDictionary *)rawJSON;
- (NSMutableDictionary *)assembledJSON;

@end
