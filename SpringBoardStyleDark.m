#import <UIKit/UIKit.h>
#import <substrate.h>

@class SpringBoard;

static void (* orig_SpringBoard_applicationDidFinishLaunching)(SpringBoard* self, SEL _cmd, UIApplication* arg0);
static void SpringBoardStyleDark_SpringBoard_applicationDidFinishLaunching(SpringBoard* self, SEL _cmd, UIApplication* arg0) {
    orig_SpringBoard_applicationDidFinishLaunching(self, _cmd, arg0);
    UIWindow *window = UIApplication.sharedApplication.keyWindow;
    window.overrideUserInterfaceStyle = UIUserInterfaceStyleDark;
}

__attribute__ ((constructor)) static void initialization() {
    MSHookMessageEx(objc_getClass("SpringBoard"), @selector(applicationDidFinishLaunching:), (IMP)&SpringBoardStyleDark_SpringBoard_applicationDidFinishLaunching, (IMP *)&orig_SpringBoard_applicationDidFinishLaunching);
}