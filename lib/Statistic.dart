import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BottomNavigationBar.dart';
import 'Comon.dart';

class Statistic extends StatefulWidget {
  const Statistic({Key? key}) : super(key: key);

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  int select = 0;
  int Day = 0;
  int Week = 0;
  int Month = 0;
  int Years = 0;
  List icon = [Icons.shopping_bag_outlined, Icons.shopping_cart_outlined];

  List text = ["Shopping", "Grocery"];
  List text2 = ["\$250.00", "\$300.00"];
  List text3 = ["Day", "Week", "Month", "Years"];

  List name = [
    "Day",
    "Week",
    "Month",
    "Years",
  ];
  List day = [
    "Sunday",
    "Monday",
    "Tuseday",
    "Wednersday",
    "Thursday",
    "Friday",
    "Saturday",
  ];
  List week = [
    "Week1",
    "Week2",
    "Week3",
    "Week4",
  ];
  List month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  List year = [
    "2020",
    "2022",
    "2023",
    "2024",
    "2025",
    "2026",
    "2027",
    "2028",
    "2029",
    "2030",
    "2031",
    "2032",
    "2033",
    "2034",
    "2035",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ),
                    );
                  },
                  child:
                      Image.asset(ImageConstants.back, height: 9.h, width: 9.w),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18, left: 90),
                child: Text(
                  "Statistic",
                  style: TextStyle(
                      fontFamily: "Titillium Web",
                      color: ColorCodes.nevyblue,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Current Balance ",
              style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "\$7800.50",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.arrow_downward_rounded,
                    color: Color(0xffFD6262),
                    size: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "5,25%",
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xffFD6262),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkResponse(
                  onTap: () {
                    setState(() {});
                    select = index;
                  },
                  child: Text(
                    text3[index],
                    style: TextStyle(
                      color: select == index
                          ? ColorCodes.nevyblue
                          : Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 37,
          ),
          Image.asset("asset/image/Group (2).png"),
          SizedBox(
            height: 30,
          ),
          select == 0
              ? Container(
                  height: 30,
                  child: ListView.builder(
                    itemCount: day.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkResponse(
                          onTap: () {
                            setState(() {});
                            Day = index;
                          },
                          child: Text(
                            day[index],
                            style: TextStyle(
                                color: Day == index
                                    ? ColorCodes.Pink
                                    : Colors.black54,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(),
          select == 1
              ? Container(
                  height: 30,
                  child: ListView.builder(
                    itemCount: week.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: InkResponse(
                          onTap: () {
                            setState(() {});
                            Week = index;
                          },
                          child: Text(
                            week[index],
                            style: TextStyle(
                                color: Week == index
                                    ? ColorCodes.Pink
                                    : Colors.black54,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(),
          select == 2
              ? Container(
                  height: 30,
                  child: ListView.builder(
                    itemCount: month.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: InkResponse(
                          onTap: () {
                            setState(() {});
                            Month = index;
                          },
                          child: Text(
                            month[index],
                            style: TextStyle(
                                color: Month == index
                                    ? ColorCodes.Pink
                                    : Colors.black54,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(),
          select == 3
              ? Container(
                  height: 30,
                  child: ListView.builder(
                    itemCount: year.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: InkResponse(
                          onTap: () {
                            setState(() {});
                            Years = index;
                          },
                          child: Text(
                            year[index],
                            style: TextStyle(
                                color: Years == index
                                    ? ColorCodes.Pink
                                    : Colors.black54,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : SizedBox(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: ColorCodes.Pink,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.south_east, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Income",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 13),
                            ),
                            Text(
                              "\$3460",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 80,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: ColorCodes.nevyblue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.call_made, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Outcome",
                              style: TextStyle(
                                  fontFamily: "Poppins", fontSize: 13),
                            ),
                            Text(
                              "\$2500",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Spendings",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.black54,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            child: ListView.builder(
              itemCount: 2,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 80,
                  width: 180,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFC4BF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Icon(icon[index], color: ColorCodes.Pink),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text[index],
                              style: TextStyle(
                                  fontFamily: "Poppins", color: Colors.black54),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              text2[index],
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 10),
                          child: Image.asset(
                            "asset/image/Ellipse 15.png",
                            scale: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
