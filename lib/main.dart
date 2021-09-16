import 'package:flamingo/flamingo.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hulahob_app_nullsafety/routes/app.dart';
import 'package:hulahob_app_nullsafety/routes/route_name.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initialServices();
  runApp(MyApp());
}

_initialServices() async {
  await Flamingo.initializeApp(settings: Settings(persistenceEnabled: true));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .copyWith(
                  headline6: GoogleFonts.poppins(
                      color: Color(0xff8b8b8b), fontSize: 18)),
          centerTitle: true,
          actionsIconTheme: IconThemeData(
            color: Colors.red,
          ),
          iconTheme: IconThemeData(
            color: Color(0XFF8B8B8B),
          ),
        ),
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
          bodyText1: GoogleFonts.poppins(color: textColor),
          bodyText2: GoogleFonts.poppins(color: textColor),
        ),
      ),
      getPages: App.routes,
      initialBinding: AuthBinding(),
      initialRoute: getUser() == null
          ? RouteName.splash
          : getUser().hobbies.isEmpty
              ? Routes.ONBOARDING
              : Routes.HOME,
    );
  }
}
