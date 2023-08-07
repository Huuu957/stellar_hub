import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:stellarhub/screens/home_screen.dart';
import 'package:stellarhub/widgets/navigation_bar_widget.dart';
import '../screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashScreen.splashScreenRoute,
          getPages: [
            GetPage(
              name: SplashScreen.splashScreenRoute,
              page: () => const SplashScreen(),
            ),
            GetPage(
              name: NavigationBarWidget.navigationBarWidget,
              page: () => const NavigationBarWidget(),
            ),
            GetPage(
              name: HomeScreen.homeScreenRoute,
              page: () => const HomeScreen(),
            ),
          ],
        );
      },
    );
  }
}
