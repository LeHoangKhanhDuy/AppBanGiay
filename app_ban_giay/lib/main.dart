import 'package:app_ban_giay/utils/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {

  // //Widget binding
  // final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // //getx storage
  // await GetStorage.init();

  // //await splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // //firebase & authen
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
  //   (FirebaseApp value) => Get.put(AuthenticationRepository()),
  // );






  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );
  runApp(const App());
}

