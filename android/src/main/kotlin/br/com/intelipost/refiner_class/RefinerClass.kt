package br.com.intelipost.refiner_class

import androidx.annotation.NonNull

import android.content.Context
import io.flutter.plugin.common.MethodCall
import io.refiner.Refiner
import io.refiner.RefinerConfigs
import android.util.Log

class RefinerClass {
    companion object {
        @JvmStatic
        fun initRefiner(@NonNull call: MethodCall, @NonNull context: Context) {
            var projectId = call.arguments() as String?;
            try {
                Refiner.initialize(
                    context = context,
                    refinerConfigs = RefinerConfigs(
                        projectId = projectId!!,
                        enableDebugMode = true
                    )
                );
            } catch (e: Exception) {
                Log.e("REFINER", e.printStackTrace().toString());
            }
        }

        @JvmStatic
        fun identifyUser(@NonNull call: MethodCall) {
            var arguments = call.arguments() as HashMap<String, String>?;
            var userTraits = arguments!!.get("userTraits") as HashMap<String, String>?;
            var newMap = LinkedHashMap<String, Any>(userTraits);
            try {
                Refiner.identifyUser(
                    userId = arguments!!.get("userId") as String,
                    userTraits = newMap
                );
            } catch (e: Exception) {
                Log.e("REFINER", e.printStackTrace().toString());
            }
        }


        @JvmStatic
        fun trackEvent(@NonNull call: MethodCall) {
            var eventName = call.arguments() as String?;
            try {
                Refiner.trackEvent(eventName = eventName!!);
            } catch (e: Exception) {
                Log.e("REFINER", e.printStackTrace().toString());
            }
        }

        @JvmStatic
        fun trackScreen(@NonNull call: MethodCall) {
            var screenName = call.arguments() as String?;
            try {
                Refiner.trackScreen(screenName = screenName!!);
            } catch (e: Exception) {
                Log.e("REFINER", e.printStackTrace().toString());
            }
        }

        @JvmStatic
        fun resetUser() {
            try {
                Refiner.resetUser();
            } catch (e: Exception) {
                Log.e("REFINER", e.printStackTrace().toString());
            }
        }
    }
}