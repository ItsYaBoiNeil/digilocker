import 'package:digilocker/presentation/log_in_screen/log_in_screen.dart';
import 'package:digilocker/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:digilocker/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:digilocker/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:digilocker/presentation/splash_screen/splash_screen.dart';
import 'package:digilocker/presentation/splash_screen/binding/splash_binding.dart';
import 'package:digilocker/presentation/onbording_screen/onbording_screen.dart';
import 'package:digilocker/presentation/onbording_screen/binding/onbording_binding.dart';
import 'package:digilocker/presentation/home_screen/home_screen.dart';
import 'package:digilocker/presentation/home_screen/binding/home_binding.dart';
import 'package:digilocker/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:digilocker/presentation/product_detail_screen/binding/product_detail_binding.dart';
import 'package:digilocker/presentation/vehicle_accepted_screen/vehicle_accepted_screen.dart';
import 'package:digilocker/presentation/vehicle_accepted_screen/binding/vehicle_accepted_binding.dart';
import 'package:digilocker/presentation/account_screen/account_screen.dart';
import 'package:digilocker/presentation/account_screen/binding/account_binding.dart';
import 'package:digilocker/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:digilocker/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String splashScreen = '/splash_screen';

  static const String onbordingScreen = '/onbording_screen';

  static const String homeScreen = '/home_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String vehicleAcceptedScreen = '/vehicle_accepted_screen';

  static const String accountScreen = '/account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onbordingScreen,
      page: () => OnbordingScreen(),
      bindings: [
        OnbordingBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailScreen(),
      bindings: [
        ProductDetailBinding(),
      ],
    ),
    GetPage(
      name: vehicleAcceptedScreen,
      page: () => VehicleAcceptedScreen(),
      bindings: [
        VehicleAcceptedBinding(),
      ],
    ),
    GetPage(
      name: accountScreen,
      page: () => AccountScreen(),
      bindings: [
        AccountBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
