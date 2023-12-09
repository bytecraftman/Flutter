import 'package:currency_convertor/currency_convertor_cupertino_page.dart';
import 'package:currency_convertor/currency_convertor_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Material App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyConvertorMaterialPage());
  }
}

// Cupertino App
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyCovertorCupertinoPage());
  }
}
