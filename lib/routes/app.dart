import 'package:get/route_manager.dart';
import 'package:hulahob_app_nullsafety/routes/route_name.dart';
import 'package:hulahob_app_nullsafety/views/pages/sign_in.dart';

class App {
  static final routes = [
    GetPage(name: RouteName.signin, page: () => SignInPage())
  ];
}
