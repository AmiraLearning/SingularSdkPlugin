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
    phrase = [phrase description];
    phrase = [phrase stringByReplacingOccurrencesOfString:@"(" withString:@""];
    phrase = [phrase stringByReplacingOccurrencesOfString:@")" withString:@""];
    phrase = [phrase stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    phrase = [phrase stringByReplacingOccurrencesOfString:@" " withString:@""];
    phrase = [phrase stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSArray* values = [phrase componentsSeparatedByString: @","];

    NSString *key = [NSString stringWithFormat:@"%@", (NSString *) values[0]];
    NSString *secretKey = [NSString stringWithFormat:@"%@",(NSString *) values[1]];
    NSString *username = [NSString stringWithFormat:@"%@",(NSString *) values[2]];

    [Singular setCustomUserId:username];
    [Singular startSession:key withKey:secretKey];

    [self.commandDelegate sendPluginResult:key];// callbackId:command.callbackId];
}
@end
