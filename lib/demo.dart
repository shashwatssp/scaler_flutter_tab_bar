import 'package:flutter/material.dart';
import 'package:scaler_tab_bar/basic_tabBar.dart';
import 'package:scaler_tab_bar/customizing_tabBar_indicator.dart';
import 'package:scaler_tab_bar/listening_for_tab_change.dart';
import 'package:scaler_tab_bar/preserve_state.dart';
import 'package:scaler_tab_bar/scrollable_tabBar.dart';
import 'package:scaler_tab_bar/tabBar_without_appBar.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BasicTabBar();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Basic TabBar',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const CustomTabBar();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Customizing TabBar Indicator',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ScrollTabBar();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Scrollable TabBar',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ListenTabBar();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Listening for Tab Change Event',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TabBarW();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Implementing Tab Bar without AppBar',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TabBarP();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Preserving the state of Tabs',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
