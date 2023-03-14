import 'package:flutter/material.dart';
import 'EaseBuzz14March2023/easebuzz_14march_home.dart';

// https://stackoverflow.com/questions/72845334/attribute-applicationlabel-is-also-present-at
// error  solution => Never Remove this
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
      title: 'Flutter EaseBuzz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EaseBuzz14MarchHome(),
    );
  }
}
