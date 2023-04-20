import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar'),
        bottom: TabBar(
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
                width: 1,
              )),
          controller: _tabController,
          tabs: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Tab(
                text: 'Home',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Tab(
                text: 'Contacts',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Tab(
                text: 'Settings',
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('sample text for Home Tab'),
          ),
          Center(
            child: Text('sample text for Contacts Tab'),
          ),
          Center(
            child: Text('sample text for Settings Tab'),
          )
        ],
      ),
    );
  }
}
