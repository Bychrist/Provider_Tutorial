import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/app_class_provider.dart';
import 'package:provider_tutorial/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppClassProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Tutorial',
        home: FirstPage(),
      ),
    );
  }
}
