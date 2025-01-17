import 'package:dragonfly/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dragonfly',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" buttoncontext
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF05BE71),
          secondary: Color(0xFF7443FF),
          onBackground: Color(0xFF2D2D2D),
          error: Color(0xFFFE324E)
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 28.0,
            fontWeight: FontWeight.w500,
            height: 1.5
          ),
          headlineSmall: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 24.0,
            fontWeight: FontWeight.w500,
            height: 1.5
          ),
          titleLarge: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            height: 1.5
          ),
          titleMedium: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            height: 1.5
          ),
          titleSmall: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            height: 1.5
          ),
          bodyMedium: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            height: 1.5
          ),
          bodySmall: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            height: 1.5
          ),
          labelLarge: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          labelMedium: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
          labelSmall: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 10.0,
            fontWeight: FontWeight.w400,
            height: 1.5
          )
        ),
        // useMaterial3: true,
      ),
      home: const Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}