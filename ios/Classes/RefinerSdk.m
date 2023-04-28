#import "RefinerSdk.h"
#if __has_include(<refiner_sdk/refiner_sdk-Swift.h>)
#import <refiner_sdk/refiner_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "refiner_sdk-Swift.h"
#endif

@implementation RefinerSdk
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRefinerSdk registerWithRegistrar:registrar];
}
@end
