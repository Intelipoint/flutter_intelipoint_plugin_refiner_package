import Flutter
import RefinerSdk

public class RefinerClass {
    static func initRefiner(call: FlutterMethodCall){
        let projectId = call.arguments as! String;
        do {
            try Refiner.instance.initialize(projectId: projectId, enableDebugMode: true)
        } catch {
            print(error.localizedDescription)
        }
    }

    static func identifyUser(call: FlutterMethodCall){
        let dict = call.arguments as! Dictionary<String, Any>;
        let userId = dict["userId"]! as! String;
        let userTraits = dict["userTraits"] as! Dictionary<String, String>;
        do { try
            Refiner.instance.identifyUser(
            userId: userId,
            userTraits: userTraits); 
        } catch {
            print(error.localizedDescription);
        }
    }


    static func trackEvent(call: FlutterMethodCall){
        let eventName = call.arguments as! String;
        do {
            try Refiner.instance.trackEvent(name: eventName)
        } catch {
            print(error.localizedDescription)
        }
    }

    static func trackScreen(call: FlutterMethodCall){
        let screenName = call.arguments as! String;
        do {
            try Refiner.instance.trackScreen(name: screenName)
        } catch {
            print(error.localizedDescription)
        }
    }

    static func resetUser() {
        do {
            try Refiner.instance.resetUser();
        } catch {
            print(error.localizedDescription)
        }
    }
}