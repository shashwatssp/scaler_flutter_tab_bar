import 'package:flutter/material.dart';

class TabBarP extends StatefulWidget {
  const TabBarP({Key? key}) : super(key: key);

  @override
  State<TabBarP> createState() => _TabBarPState();
}

class _TabBarPState extends State<TabBarP> with SingleTickerProviderStateMixin {
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

  int x = 0;
  void _incrementx() {
    setState(() {
      x++;
    });
  }

  int y = 0;
  void _incrementy() {
    setState(() {
      y++;
    });
  }

  int z = 0;
  void _incrementz() {
    setState(() {
      z++;
    });
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
              child: PageStorage(
                child: TabBarView(
                  key: const PageStorageKey('myTabBarView'),
                  controller: _tabController,
                  children: [
                    GestureDetector(
                      onTap: _incrementx,
                      child: Center(
                        child: Text(
                          'Total countx = $x',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: _incrementy,
                      child: Center(
                        child: Text(
                          'Total county = $y',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: _incrementz,
                      child: Center(
                        child: Text(
                          'Total countz = $z',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                  ],
                ),
                bucket: PageStorageBucket(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
