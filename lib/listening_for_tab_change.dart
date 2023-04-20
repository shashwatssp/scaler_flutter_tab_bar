import 'package:flutter/material.dart';

class ListenTabBar extends StatefulWidget {
  const ListenTabBar({super.key});

  @override
  State<ListenTabBar> createState() => _ListenTabBarState();
}

class _ListenTabBarState extends State<ListenTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    print("Current tab index: ${_tabController.index}");
    // Do something when the tab changes
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
                  text: 'Home1',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Tab(
                  text: 'Contacts1',
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
              child: Text('sample text for Home1 Tab'),
            ),
            Center(
              child: Text('sample text for Contacts1 Tab'),
            ),
          ],
        ),
      ),
    );
  }
}
