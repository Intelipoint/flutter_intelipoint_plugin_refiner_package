import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/refiner_user_model.dart';

import 'refiner_package_platform_interface.dart';

/// An implementation of [RefinerPackagePlatform] that uses method channels.
class MethodChannelRefinerPackage extends RefinerPackagePlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('refiner_package');

  @override
  Future<void> identifyUser({required RefinerUser user}) async {
    methodChannel.invokeMethod('identifyUser', user.toJson());
  }

  @override
  Future<void> initRefiner({required String projectId}) async {
    methodChannel.invokeMethod('initRefiner', projectId);
  }
}
