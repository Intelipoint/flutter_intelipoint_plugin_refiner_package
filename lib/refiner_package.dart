import 'model/refiner_user_model.dart';

import 'refiner_package_platform_interface.dart';

class RefinerPackage {
  static Future<void> initRefiner({required String projectId}) async {
    return RefinerPackagePlatform.instance.initRefiner(projectId: projectId);
  }

  static Future<void> identifyUser({required RefinerUser user}) async {
    return RefinerPackagePlatform.instance.identifyUser(user: user);
  }
}
