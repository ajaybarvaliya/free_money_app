import 'package:flutter/material.dart';

import 'Bill_Enquiry.dart';
import 'Comon.dart';
import 'Electric_2.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 100,
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          "Electric",
          style: TextStyle(
              fontFamily: "Titillium Web",
              color: ColorCodes.nevyblue,
              fontWeight: FontWeight.w700,
              fontSize: 20),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Container(
            height: 70,
            width: 330,
            child: TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.black54,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Creates border
                  color:
                      ColorCodes.nevyblue), //Change background color from here
              tabs: [
                Text("Electricity Token"),
                Text("Bills"),
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        children: [
          Electric_2(),
          Bill_Enquiry(),
        ],
        controller: tabController,
      ),
    );
  }
}
