import 'dart:js' as js;

import 'model/refiner_user_model.dart';

void identifyUser({required RefinerUser user}) {
  final obj = js.JsObject.jsify(user.toWebAppJson());
  js.context.callMethod('identifyUser', [obj]);
}

void initRefiner({required String projectId}) {
  js.context.callMethod('initRefiner', [projectId]);
}

void trackScreen({required String screenName}) {
  js.context.callMethod('trackScreen', [screenName]);
}

void trackEvent({required String eventName}) {
  js.context.callMethod('trackScreen', [eventName]);
}

void resetUser() => js.context.callMethod('resetUser');
