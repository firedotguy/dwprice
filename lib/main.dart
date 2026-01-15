import 'package:dwprice/pages/price.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  l.d('app init');
  runApp(const MainApp());
}

final l = Logger(printer: SimplePrinter());

class AppColors {
  static const main = Color(0xFFE6F3EA);
  static const second = Color(0xFF8B9E96);
  static const primary = Color(0xFF00A24C);
  static const success = Color(0xFF58d68d);
  static const warning = Color(0xFFf1c40f);
  static const error = Color(0xFFe74c3c);
  static const bg = Color(0xFF161717);
  static const bg2 = Color(0xFF1E2220);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    l.d('MainApp.build');
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Jost',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.bg,
        primaryColor: AppColors.primary,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          surface: Color(0xFF161b22),
          secondary: AppColors.primary,
          error: AppColors.error,
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)))
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: PricePage()
    );
  }
}
