import 'package:flutter/material.dart';

class BasicTabBar extends StatefulWidget {
  const BasicTabBar({super.key});

  @override
  State<BasicTabBar> createState() => _BasicTabBarState();
}

class _BasicTabBarState extends State<BasicTabBar>
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
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Home',
            ),
            Tab(
              text: 'Contacts',
            ),
            Tab(
              text: 'Settings',
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
