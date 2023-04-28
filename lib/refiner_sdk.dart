import 'package:flutter/foundation.dart';

import './web/web_functions.dart' if (dart.library.html) './web/web_functions_impl.dart' as web;
import 'model/refiner_user_model.dart';
import 'refiner_sdk_platform.dart';

class RefinerSdk {
  static Future<void> initRefiner({required String projectId}) async {
    return kIsWeb
        ? web.initRefiner(projectId: projectId)
        : RefinerSdkPlatform.instance.initRefiner(projectId: projectId);
  }

  static Future<void> identifyUser({required RefinerUser user}) async {
    return kIsWeb ? web.identifyUser(user: user) : RefinerSdkPlatform.instance.identifyUser(user: user);
  }

  static Future<void> trackEvent({required String eventName}) async {
    return kIsWeb ? web.trackEvent(eventName: eventName) : RefinerSdkPlatform.instance.trackEvent(eventName: eventName);
  }

  /// Not available on web
  static Future<void> trackScreen({required String screenName}) async {
    return kIsWeb ? null : RefinerSdkPlatform.instance.trackScreen(screenName: screenName);
  }

  static Future<void> resetUser() async {
    return kIsWeb ? web.resetUser() : RefinerSdkPlatform.instance.resetUser();
  }
}
