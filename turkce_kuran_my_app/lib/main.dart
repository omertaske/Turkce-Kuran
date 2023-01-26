
import 'package:flutter/material.dart';

import 'arayuz/GirisSayfasi.dart';

void main() async {
  return runApp(MyApp());
 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: GirisSayfasi(),
    );
  }
}
