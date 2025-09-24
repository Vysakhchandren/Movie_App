import 'package:flutter/material.dart';
import 'package:movie_apps/home.dart';
import 'package:movie_apps/providers/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo', theme: ThemeData(appBarTheme: AppBarThemeData(backgroundColor: Colors.amber),scaffoldBackgroundColor: Colors.amber.shade100,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}
