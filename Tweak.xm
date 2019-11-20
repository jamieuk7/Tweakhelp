// Created Nov 2019
// inspired by many (not the tweak but developemnt for ios in general)



#include <UIKit/UIKit.h>
#include "Oxylabels.h"






static BOOL _pfTweakEnabled = YES;


%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application { 
    %orig;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"Niceee" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];[alert show]; [alert release]; } 


%end