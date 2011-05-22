//
//  PsychologistAppDelegate.m
//  Psychologist
//
//  Created by Peter Donald on 22/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PsychologistAppDelegate.h"
#import "PsychologistViewController.h"

@implementation PsychologistAppDelegate


@synthesize window=_window;
@synthesize navigator=_navigator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.navigator = [[UINavigationController alloc] init];
  
  PsychologistViewController *psychController = [[PsychologistViewController alloc] init];
  
  [self.navigator pushViewController:psychController animated:NO];
  
  [psychController release];
  
  [self.window addSubview:self.navigator.view];
  [self.window makeKeyAndVisible];
  return YES;
}

- (void)dealloc
{
  self.navigator = nil;
  [_window release];
  [super dealloc];
}

@end
