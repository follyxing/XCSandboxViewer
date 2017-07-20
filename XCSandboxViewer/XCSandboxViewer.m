//
//  XCSandboxViewer.m
//  Pods
//
//  Created by 邢程 on 2017/7/20.
//
//

#import "XCSandboxViewer.h"
#import "GCDWebDAVServer.h"
#import "GCDWebServer.h"
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
    [self.davServer startWithPort:port bonjourName:@"XCSandboxViewer"];
    NSLog(@"\n 🐳 Visit %@ in your WebDAV client 🐳 \n", _davServer.serverURL);
}
-(void)stop{
    if (self.davServer) {
        [self.davServer stop];
    }
}

-(GCDWebDAVServer *)davServer{
    if (!_davServer) {
        NSString * homePath = NSHomeDirectory();
        _davServer  = [[GCDWebDAVServer alloc] initWithUploadDirectory:homePath];
        [GCDWebDAVServer setLogLevel:5];
    }
    return _davServer;
}
@end
