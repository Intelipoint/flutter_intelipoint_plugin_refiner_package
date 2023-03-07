#import "RefinerPackagePlugin.h"
#if __has_include(<refiner_package/refiner_package-Swift.h>)
#import <refiner_package/refiner_package-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "refiner_package-Swift.h"
#endif

@implementation RefinerPackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRefinerPackagePlugin registerWithRegistrar:registrar];
}
@end
