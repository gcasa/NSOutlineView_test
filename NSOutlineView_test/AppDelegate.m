//
//  AppDelegate.m
//  NSOutlineView_test
//
//  Created by Gregory Casamento on 3/29/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

// Outline view data source
- (NSInteger) outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(nullable id)item
{
    if (item == nil)
        return 1;
    else if ([item isEqualToString: @"Item 0"])
        return 1;
    else if ([item isEqualToString: @"Item 1"])
        return 0;
    
    return 0;
}

- (id) outlineView:(NSOutlineView *)outlineView
             child:(NSInteger)index
            ofItem:(nullable id)item
{
    if (index == 0 && item == nil)
    {
        return @"Item 0";
    }
    else if (index == 0 && [item isEqualToString:@"Item 0"])
    {
        return @"Item 1";
    }
    
    return nil;
}

- (BOOL) outlineView:(NSOutlineView *)outlineView
    isItemExpandable:(id)item
{
    if ([item isEqualToString: @"Item 0"])
        return YES;
    
    return NO;
}

- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item
{
    return item;
}

// Outline view delegate

@end
