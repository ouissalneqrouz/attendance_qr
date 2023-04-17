// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pfa_gestion_absence_qrcode/pages/home.dart';
// import 'package:pfa_gestion_absence_qrcode/pages/login.dart';
// import 'package:firebase_core/firebase_core.dart';
//
//
// Future main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//
//   runApp(
//     MaterialApp(
//       home: const MyApp(),
//     ),
//   );
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context)=> Scaffold(
//     body: StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context,snapshot){
//         if(snapshot.hasData) {
//           return home();
//         } else {
//           return LoginWidget();
//         }
//       },
//     ),
//     );
//   }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pfa_gestion_absence_qrcode/pages/home.dart';
import 'package:firebase_core_web/firebase_core_web.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCJq0OkP4XibUfH6ufzSqgmINdAXiL2Pbw",
        appId: "1:614026879471:android:4d5d5f8ec1a94818b9561a",
        messagingSenderId: "614026879471",
        projectId: "absence-qr",)
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: home(),
    );
  }
}
