import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealfit/src/controllers/app_page_routes.dart';
import 'package:mealfit/src/views/hidden_drawer.dart';
import 'package:mealfit/src/views/login_sceen.dart';
import 'package:mealfit/src/views/meals_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.kalamTextTheme(),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromARGB(255, 152, 110, 224),
            onPrimary: Colors.orange,
            secondary: Colors.black,
            onSecondary: Colors.white,
            error: Color.fromARGB(255, 122, 42, 37),
            onError: Colors.orange,
            background: Colors.green,
            onBackground: Colors.orange,
            surface: Colors.orange,
            onSurface: Colors.white),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const LoginScreen(),
        AppRoutes.MEALS_SCREEN: (ctx) => const MealsHome(),
        AppRoutes.HIDDEN_DRAWER: (ctx) => const HiddenDrawer(),
      },
    );
  }
}
