import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/login.page.dart';
import 'Screens/SignUpPage.dart';
import 'Screens/Home.page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD7_1IMFsqFsfN-p6quseVGC13Xs0_9864",
      authDomain: "fprojet-d53bf.firebaseapp.com",
      projectId: "fprojet-d53bf",
      storageBucket: "fprojet-d53bf.appspot.com",
      messagingSenderId: "714157216136",
      appId: "1:714157216136:android:9d72333e1f9286b80daa3d",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      title: 'Narjiss Ibourg',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/signin': (context) => SignUpPage(),
      },
    );
  }
}
