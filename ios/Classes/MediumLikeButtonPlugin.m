#import "MediumLikeButtonPlugin.h"
#if __has_include(<medium_like_button/medium_like_button-Swift.h>)
#import <medium_like_button/medium_like_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "medium_like_button-Swift.h"
#endif

@implementation MediumLikeButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMediumLikeButtonPlugin registerWithRegistrar:registrar];
}
@end
