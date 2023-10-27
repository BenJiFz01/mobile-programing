import 'package:flutter/material.dart';
import 'package:uts_kopi/widgets/items_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){},
                  child: Icon(
                    Icons.sort_rounded,
                    color: const Color.fromARGB(255, 7, 5, 5).withOpacity(0.5),
                    size: 35,
                  ),
                ),
                 InkWell(
                  onTap: (){},
                  child: Icon(
                    Icons.notifications,
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                    size: 35,
                  ),
                ),
              ],
            ),
            ),
            SizedBox(height: 30),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Its a Coffe Menu",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Color.fromARGB(255, 252, 134, 24),
              unselectedLabelColor: const Color.fromARGB(255, 7, 6, 6).withOpacity(0.5),
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                insets: EdgeInsets.symmetric(horizontal: 16)
              ),
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
              Tab(
                text: "Hot Coffee"
              ),
              Tab(
                text: "Cold Coffee"
              ),
              Tab(
                text: "Food"
              ),
              Tab(text: "Drink"
              ),
            ],
            ),
            SizedBox(height: 10),
            Center(
              child: [
                ItemsWidget(),
                ItemsWidget(),
                ItemsWidget(),
                ItemsWidget(),
              ][_tabController.index],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
