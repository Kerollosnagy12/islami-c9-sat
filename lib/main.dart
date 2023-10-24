import 'package:flutter/material.dart';
import 'package:islami_practice/Ui/Home/HomeScreen.dart';
import 'package:islami_practice/Ui/chapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_practice/Ui/hadethDetails/HadethDetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        cardTheme: CardTheme(
            elevation: 18,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
          centerTitle: true,
          color: Colors.transparent,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xffB7935F),
          primary: Color(0xFFB7935F),
          secondary: Color(0x87B7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(size: 32)),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routename: (_) => HadethDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
