// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reem_app/generated/l10n.dart';
import 'package:reem_app/src/feature/auth/login/login_screen.dart';
import 'package:reem_app/src/feature/auth/register/register_screen.dart';
import 'package:reem_app/src/feature/categoryies/categoryies.dart';
import 'package:reem_app/src/feature/home/home_screen.dart';
import 'package:reem_app/src/feature/wishlist/wishlist_screen.dart';
import 'package:reem_app/src/utils/app_theme.dart';

void main() {
  runApp(ReemApp());
}

class ReemApp extends StatelessWidget {
  const ReemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,

        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.light,
            locale: const Locale('en'),
            supportedLocales: S.delegate.supportedLocales,
            initialRoute: RegisterScreen.routeName,
            routes: {
              LoginScreen.routeName: (context) => LoginScreen(),
              RegisterScreen.routeName: (context) => RegisterScreen(),
              HomeScreen.routeName: (context) => HomeScreen(),
              CategoryScreen.routeName: (context) => CategoryScreen(),
              WishlistScreen.routeName: (context) => WishlistScreen(),
            },
          );
        });
  }
}
