//
//  XCSandboxViewer.m
//  Pods
//
//  Created by 邢程 on 2017/7/20.
//
//

#import "XCSandboxViewer.h"
#import "GCDWebDAVServer.h"
@interface  XCSandboxViewer()
@property(nonatomic,strong) GCDWebDAVServer * davServer;
@end
@implementation XCSandboxViewer

+(instancetype)shareViewer{
    static XCSandboxViewer * viewer;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        viewer = [[XCSandboxViewer alloc] init];
    });
    return viewer;
}

-(void)start{
    [self startWithPort:8888];
}
-(void)startWithPort:(NSUInteger)port{
    NSString * homePath = NSHomeDirectory();
    self.davServer = [[GCDWebDAVServer alloc] initWithUploadDirectory:homePath];
    [self.davServer startWithPort:port bonjourName:@"XCSandboxViewer"];
    NSLog(@"Visit %@ in your WebDAV client", _davServer.serverURL);
}
-(void)stop{
    if (self.davServer) {
        [self.davServer stop];
    }
}
@end
