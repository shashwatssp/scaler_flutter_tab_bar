import 'package:flutter/material.dart';

class TabBarW extends StatefulWidget {
  const TabBarW({Key? key}) : super(key: key);

  @override
  State<TabBarW> createState() => _TabBarWState();
}

class _TabBarWState extends State<TabBarW> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
      length: 3,
      initialIndex: 0,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 38,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
              ),
              child: Expanded(
                child: TabBar(
                  isScrollable: true,
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
            ),
            Expanded(
              child: TabBarView(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
