import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_prpvider/provider/movie_provider.dart';
import 'package:tutorial_prpvider/screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider <MovieProvider>(
        child: const MyApp(),
      create: (_)=>MovieProvider(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Home Screen',),
    );
  }
}
