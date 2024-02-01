import 'package:firebase_core/firebase_core.dart';
import 'package:sanberappflutter/Latihan/Latihan%201/Auth/loginScreen.dart';
import 'package:sanberappflutter/Latihan/Latihan%202/getDataScreen.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sanberappflutter/Tugas/Tugas11/accountScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/homeScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/loginScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/searchScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas12/get_data_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GolekKerjo',
      home: GetDataScreenStateManagement(),
      // initialRoute: '/login',
      // routes: {
      //   '/login': (context) => LoginScreen(),
      //   '/home': (context) => HomeScreen(),
      //   '/search': (context) => SearchScreen(),
      //   '/account': (context) => AccountScreen(),
      // },
    );
  }
}
