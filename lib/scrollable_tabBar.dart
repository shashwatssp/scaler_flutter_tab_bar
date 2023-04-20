import 'package:flutter/material.dart';

class ScrollTabBar extends StatefulWidget {
  const ScrollTabBar({super.key});

  @override
  State<ScrollTabBar> createState() => _ScrollTabBarState();
}

class _ScrollTabBarState extends State<ScrollTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      animationDuration: Duration(
        seconds: 1,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          bottom: TabBar(
            isScrollable: true,
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
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Tab(
                  text: 'Address',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Tab(
                  text: 'Work',
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
            ),
            Center(
              child: Text('sample text for Address Tab'),
            ),
            Center(
              child: Text('sample text for Work Tab'),
            ),
          ],
        ),
      ),
    );
  }
}
