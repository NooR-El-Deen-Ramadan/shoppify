import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shoppify/core/utils/app_colors.dart';
import 'package:shoppify/features/welcome/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
      path: 'localization',
      fallbackLocale: Locale('en', 'US'),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Suwannaphum",
        scaffoldBackgroundColor: AppColors.whiteColor,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            //missing
          ),
        ),
      ),

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: WelcomeScreen(),
    );
  }
}
