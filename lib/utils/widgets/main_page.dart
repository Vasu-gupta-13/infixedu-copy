import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infixedu_copy/config/app_config.dart';
import 'package:infixedu_copy/screens/splash_screen.dart';
import 'package:infixedu_copy/utils/errors.dart';
import 'package:infixedu_copy/utils/themes.dart';
import 'package:infixedu_copy/utils/widgets/cc.dart';




class MainPage extends StatefulWidget {
  const MainPage({super.key});


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//  final LanguageController languageController = Get.put(LanguageController());
  final CustomController controller = Get.put(CustomController());
  bool isRTL = true;

  @override
  void initState() {
    super.initState();

    // Utils.getIntValue('locale').then((value) {
    //   setState(() {
    //     isRTL = value == 0 ? true : false;
    //     //Utils.showToast('$isRTL');
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          builder: (_, child) {
            return Obx(() {
              if (controller.isLoading.value) {
                return MaterialApp(
                  builder: EasyLoading.init(),
                  debugShowCheckedModeBanner: false,
                  home: const Scaffold(
                    body: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  ),
                );
              } else {
                if (controller.connected.value) {
                  return isRTL
                      ? GetMaterialApp(
                    title: AppConfig.appName,
                    debugShowCheckedModeBanner: false,
                    theme: basicTheme(),
                    builder: EasyLoading.init(),
                    home: FutureBuilder(
                        future: _initialization,
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Scaffold(
                              body: Center(
                                child: Text(
                                  snapshot.error.toString(),
                                ),
                              ),
                            );
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return const Scaffold(
                              body: Splash(),
                            );
                          }
                          return const CircularProgressIndicator();
                        }),
                  )
                      : const Material(
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Center(
                        child: CupertinoActivityIndicator(),
                      ),
                    ),
                  );
                } else {
                  return GetMaterialApp(
                    builder: EasyLoading.init(),
                    fallbackLocale: const Locale('en_US'),
                    debugShowCheckedModeBanner: false,
                    home: const ErrorPage(),
                  );
                }
              }
            });
          }),
    );
  }
}
