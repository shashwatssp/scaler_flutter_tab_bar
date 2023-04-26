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
        centerTitle: true,
        title: Text(
          'Example',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BasicTabBar();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Basic TabBar',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600),
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
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Customizing TabBar Indicator',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600),
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
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Scrollable TabBar',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600),
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
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Listening for Tab Change Event',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600),
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
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Tab Bar without AppBar',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w600),
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
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Preserving the state of Tabs',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
