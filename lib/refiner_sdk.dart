import 'model/refiner_user_model.dart';
import 'refiner_sdk_platform.dart';

class RefinerSdk {
  static Future<void> initRefiner({required String projectId}) {
    return RefinerSdkPlatform.instance.initRefiner(projectId: projectId);
  }

  static Future<void> identifyUser({required RefinerUser user}) {
    return RefinerSdkPlatform.instance.identifyUser(user: user);
  }
}
