import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'model/refiner_user_model.dart';

import 'refiner_sdk_method_channel.dart';

abstract class RefinerSdkPlatform extends PlatformInterface {
  /// Constructs a RefinerSdkPlatform.
  RefinerSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static final RefinerSdkPlatform _instance = RefinerSdkMethodChannel();

  static RefinerSdkPlatform get instance => _instance;

  Future<void> initRefiner({required String projectId});

  Future<void> identifyUser({required RefinerUser user});
}
