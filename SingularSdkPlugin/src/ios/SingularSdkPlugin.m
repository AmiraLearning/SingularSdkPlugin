/********* Cordova-plugin-singular-sdk.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <Cordova/CDVPlugin.h>
#import <Singular.h>

@interface SingularSdkPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)initSingular:(CDVInvokedUrlCommand*)command;

@end

@implementation SingularSdkPlugin

- (void)initSingular:(CDVInvokedUrlCommand*)command
{
    NSString* phrase = [command.arguments objectAtIndex:0];
    NSLog(@"%@", phrase);
    [Singular setCustomUserId:@"TESTID"];
    [Singular startSession:@"perblue_unified" withKey:@"91941952b6cc0379dee6b02db47b39b4"];
}
@end
