import 'package:cam_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  runApp(const MyApp());
  await Hive.initFlutter();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen() ,
    );
  }
}
