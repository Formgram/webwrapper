//
//  AppDelegate.m
//  WebWrapper
//
//  Created by Troy Evans on 12/30/13.
//  Copyright (c) 2013 Nutrislice. All rights reserved.
//

#import "AppDelegate.h"
#import "NUTRCachingURLProtocol.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Turns on offline-caching for URLs.
    // The cached items are only used if/when the internet and/or the destination server is unavailable.
    [NSURLProtocol registerClass:[NUTRCachingURLProtocol class]];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    NSLog(@"%@",sourceApplication);
    
    NSLog(@"%@", url.query);
    
    //check calling app
    if ([sourceApplication isEqualToString:@"com.apple.mobilesafari"])
    {
         //use NSURL+Parameters.m and .h are to parse the key1=value1&key2=value2&key3=value3
         
         //add your code here
         
         return YES;
    }
    else
    {
         return NO;
    }
    
}

@end
