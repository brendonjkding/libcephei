@import Foundation;
#import <objc/runtime.h>
#import <UIKit/UIFunctions.h>

__attribute__((constructor))
static void cepheiUIInit() {
	if (objc_getClass("UIApplication")) {
		[[NSBundle bundleWithPath:[UISystemRootDirectory() stringByAppendingPathComponent:@"usr/lib/CepheiUI.framework"]] load];
	}
}
