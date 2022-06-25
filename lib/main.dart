import 'package:flutter/material.dart';
import 'package:wisata_dicoding/DetailsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wisata Aceh",
      theme: ThemeData(),
      home: DetailsScreen(),
    );
  }
}
