import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'model/refiner_user_model.dart';

import 'refiner_sdk_platform.dart';

/// An implementation of [RefinerSdkPlatform] that uses method channels.
class RefinerSdkMethodChannel extends RefinerSdkPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('refiner_sdk');

  @override
  Future<void> identifyUser({required RefinerUser user}) {
    return methodChannel.invokeMethod('identifyUser', user.toJson());
  }

  @override
  Future<void> initRefiner({required String projectId}) async {
    return methodChannel.invokeMethod('initRefiner', projectId);
  }

  @override
  Future<void> trackEvent({required String eventName}) async {
    return methodChannel.invokeMethod('trackEvent', eventName);
  }

  @override
  Future<void> trackScreen({required String screenName}) async {
    return methodChannel.invokeMethod('trackEvent', screenName);
  }

  @override
  Future<void> resetUser() async {
    return methodChannel.invokeMethod('resetUser');
  }
}
