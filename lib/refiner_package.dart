import 'package:flutter/foundation.dart';

import 'model/refiner_user_model.dart';

import 'refiner_package_platform_interface.dart';
import './web/web_functions.dart' if (dart.library.html) './web/web_functions_impl.dart' as web;

class RefinerPackage {
  static void initRefiner({required String projectId}) async {
    kIsWeb ? web.initRefiner(projectId: projectId) : await RefinerPackagePlatform.instance.initRefiner(projectId: projectId);
  }

  static void identifyUser({required RefinerUser user}) async {
    kIsWeb ? web.identifyUser(user: user) : await RefinerPackagePlatform.instance.identifyUser(user: user);
  }
}
