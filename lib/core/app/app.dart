import 'package:flutter/material.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/core/app/router/router.dart';
import 'package:neobis_flutter_rick_and_morty_rodion/src/io_ui.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor),

        // colorScheme: ColorScheme.dark(
        //     background: AppColors.redText, surface: AppColors.greyUsual),
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}
