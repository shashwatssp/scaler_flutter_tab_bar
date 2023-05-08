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
        title: const Text(
          'Example App',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const BasicTabBar();
                  }));
                },
                child: const Text('Basic TabBar')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CustomTabBar();
                }));
              },
              child: const Text('Customizing TabBar Indicator'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ListenTabBar();
                }));
              },
              child: const Text('Listening for Tab Change Event'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TabBarW();
                }));
              },
              child: const Text('Tab Bar without AppBar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TabBarP();
                }));
              },
              child: const Text('Preserving the state of Tabs'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ScrollTabBar();
                }));
              },
              child: const Text('Scrollable TabBar'),
            ),
          ],
        ),
      ),
    );
  }
}
