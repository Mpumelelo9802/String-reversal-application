import 'package:flutter/material.dart';
import 'package:string_reversal_application/string_reversal.dart';
 
void main() {
  runApp(const StringReversalApp());
}
 
class StringReversalApp extends StatelessWidget {
  const StringReversalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StringReversalHome(),
    );
  }
}