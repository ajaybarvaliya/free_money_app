import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Electric_2.dart';
import 'Internet_Data.dart';
import 'Notifcation.dart';
import 'Top_Up.dart';
import 'Transfer.dart';
import 'Withdraw.dart';

class Elecric extends StatefulWidget {
  const Elecric({Key? key}) : super(key: key);

  @override
  State<Elecric> createState() => _ElecricState();
}

class _ElecricState extends State<Elecric> {
  List color = [
    Colors.pink.shade200,
    Colors.deepPurpleAccent.shade100,
    Colors.blue.shade200,
    Colors.yellow.shade200,
    Colors.red.shade200,
    Colors.blue.shade200,
    Colors.redAccent.shade100,
  ];
  List image = [
    "asset/image/Group 8.png",
    "asset/image/Group 7.png",
    "asset/image/Group 39.png",
    "asset/image/Mask group.png",
  ];
  List text = ["Transfer", "Withdraw", "Top up", "Deposit", "More"];
  List text1 = [
    "Electric",
    "Merchant",
    "Internet",
    "Ticket",
    "Mobile",
    "Transfer",
    "More",
  ];

  List image1 = [
    "asset/image/Group 125.png",
    "asset/image/Group 123.png",
    "asset/image/Group 122.png",
    "asset/image/Group 127.png",
    "asset/image/Group 128.png",
    "asset/image/Group 126.png",
    "asset/image/Group 124.png",
  ];
  List<Widget> allservice = [
    Electric_2(),
    Text("Done"),
    Internet_Data(),
    Text("Done"),
    Text("Done"),
    Text("Done"),
    Text("Done"),
    Text("Done"),
  ];
  List<Widget> screen = [
    Transfer(),
    Withdraw(),
    Top_Up(),
    Center(
      child: Text("Deposite"),
    ),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {});
          select = value;
        },
        currentIndex: select,
        selectedItemColor: ColorCodes.Pink,
        unselectedItemColor: ColorCodes.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifcation(),
                    ),
                  );
                },
                child: Container(
                  height: 33.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "asset/image/Group 287 (1).png",
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Image.asset(
                    "asset/image/Group 286.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 10,
                left: 10,
                bottom: -100,
                child: Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              "Balance",
                              style: TextStyle(fontFamily: "Poppins"),
                            ),
                            Spacer(),
                            Text(
                              "Active",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: ColorCodes.Pink),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "\$7800.00",
                          style: TextStyle(
                              fontSize: 17,
                              color: ColorCodes.nevyblue,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Container(
                        height: 12.h,
                        //color: Colors.black,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          padding: EdgeInsets.only(left: 10),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => screen[index],
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 7.h,
                                    width: 17.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      image: DecorationImage(
                                        scale: 3,
                                        image: AssetImage(
                                          image[index],
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 1.h),
                                Text(
                                  text[index],
                                  style: TextStyle(fontFamily: "Poppins"),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "All Services",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 20),
          ),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: List.generate(
                7,
                (index) => InkResponse(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => allservice[index],
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: color[index],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(image1[index], scale: 4),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          text1[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
