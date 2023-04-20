import 'package:flutter/material.dart';
import 'package:scaler_tab_bar/basic_tabBar.dart';
import 'package:scaler_tab_bar/customizing_tabBar_indicator.dart';
import 'package:scaler_tab_bar/listening_for_tab_change.dart';
import 'package:scaler_tab_bar/preserve_state.dart';
import 'package:scaler_tab_bar/scrollable_tabBar.dart';
import 'package:scaler_tab_bar/tabBar_without_appBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabBarP(),
    );
  }
}
