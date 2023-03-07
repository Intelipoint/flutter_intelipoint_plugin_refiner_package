import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:refiner_package/model/refiner_user_model.dart';

import 'refiner_package_method_channel.dart';

abstract class RefinerPackagePlatform extends PlatformInterface {
  /// Constructs a RefinerPackagePlatform.
  RefinerPackagePlatform() : super(token: _token);

  static final Object _token = Object();

  static final RefinerPackagePlatform _instance = MethodChannelRefinerPackage();

  static RefinerPackagePlatform get instance => _instance;

  Future<void> initRefiner({required String projectId});

  Future<void> identifyUser({required RefinerUser user});
}
