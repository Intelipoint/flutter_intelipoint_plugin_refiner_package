// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:refiner_package/model/refiner_user_model.dart';

void identifyUser({required RefinerUser user}) {
  final obj = js.JsObject.jsify(user.toWebAppJson());
  js.context.callMethod('identifyUser', [obj]);
}

void initRefiner({required String projectId}) {
  js.context.callMethod('initRefiner', [projectId]);
}
