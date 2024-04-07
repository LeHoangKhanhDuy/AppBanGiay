
import 'package:app_ban_giay/features/authentication/screens/login/login.dart';
import 'package:app_ban_giay/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //varriable
  final deviceStorage = GetStorage();

  //called main.dart launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


  //Func
  screenRedirect() async{
    //Local storage
    if(kDebugMode){
        print('================= GET STORAGE Auth repo ===================');
        print(deviceStorage.read('IsFirstTime'));
      }
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnBoardingScreen());
  }



  //Email & passs

  //
}