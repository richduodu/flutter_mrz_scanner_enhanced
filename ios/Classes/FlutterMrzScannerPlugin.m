#import "FlutterMrzScannerPlugin.h"
#if __has_include(<flutter_mrz_scanner_enhanced/flutter_mrz_scanner_enhanced-Swift.h>)
#import <flutter_mrz_scanner_enhanced/flutter_mrz_scanner_enhanced-Swift.h>
#else
#import "flutter_mrz_scanner_enhanced-Swift.h"
#endif

@implementation FlutterMrzScannerPlugin
//+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
//  [SwiftFlutterMrzScannerPlugin registerWithRegistrar:registrar];
//}

NSObject<FlutterPluginRegistrar> *_registrar;

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  self.registrar = registrar;
  FlutterMRZScannerFactory* factory = [[FlutterMRZScannerFactory alloc] initWithController:registrar.messenger];
//  factory.controller = registrar.messenger;
//  FlutterMRZScannerFactory* factory = [[FlutterMRZScannerFactory alloc] init:registrar.messenger];
  [registrar registerViewFactory:factory withId:@"mrzscanner"];
}

+ (NSObject<FlutterPluginRegistrar> *)registrar {
    return _registrar;
}

+ (void)setRegistrar:(NSObject<FlutterPluginRegistrar> *)newRegistrar {
    if (newRegistrar != _registrar) {
        _registrar = newRegistrar;
    }
}

@end
