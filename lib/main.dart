import 'package:arqam_portfolio/provider/drawer_provider.dart';
import 'package:arqam_portfolio/provider/scroll_provider.dart';
import 'package:arqam_portfolio/provider/theme/theme_provider.dart';
import 'package:arqam_portfolio/sections/main/main_section.dart';
import 'package:arqam_portfolio/provider/theme/core_theme.dart' as theme;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Arqam Khursheed',
            themeMode: themeChanger.themeMode,
            theme: theme.themeLight,
            darkTheme: theme.themeDark,
            initialRoute: "/",
            routes: {
              "/": (context) => const MainPage(),
            },
          );
        }));
  }
}
