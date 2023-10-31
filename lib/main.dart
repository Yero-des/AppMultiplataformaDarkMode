import 'package:flutter/material.dart';
import 'package:semana9/mode.dart';
import 'package:semana9/router/app_router.dart';
import 'package:semana9/theme/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: themeProvider.isDarkMode ? AppTheme.yerodevDark : AppTheme.yerodevLight,
    );
  }
}
