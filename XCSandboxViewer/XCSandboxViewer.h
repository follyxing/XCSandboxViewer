//
//  XCSandboxViewer.h
//  Pods
//
//  Created by 邢程 on 2017/7/20.
//
//

#import <Foundation/Foundation.h>

@interface XCSandboxViewer : NSObject
+(instancetype)shareViewer;
-(void)start;
-(void)startWithPort:(NSUInteger)port;
-(void)stop;
@end
