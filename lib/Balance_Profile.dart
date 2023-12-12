import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:sizer/sizer.dart';

import 'Contact_list.dart';
import 'Electric.dart';
import 'Notifcation.dart';
import 'Top_Up.dart';
import 'Transfer.dart';
import 'Withdraw.dart';

class Balance_prifile extends StatefulWidget {
  const Balance_prifile({Key? key}) : super(key: key);

  @override
  State<Balance_prifile> createState() => _Balance_prifileState();
}

class _Balance_prifileState extends State<Balance_prifile> {
  bool isswitch = false;

  List drawer = [
    "Dark Mode",
    "Invite Friends",
    "Contact List",
    "My Wallet",
    "Change Password",
    "About us",
  ];
  List image = [
    "asset/image/Group 8.png",
    "asset/image/Group 7.png",
    "asset/image/Group 39.png",
    "asset/image/Mask group.png",
    "asset/image/Group 125.png",
  ];
  List text = ["Transfer", "Withdraw", "Top up", "Deposit", "Electric"];
  List color = [
    Color(0xff4F31C2),
    Color(0xff198646),
    Color(0xffFF9D42),
    Color(0xff011A51),
  ];
  List text1 = [
    "Paypall",
    "Apple",
    "Mcdonalds",
    "Amazon",
  ];
  List text2 = [
    "+0.54915 BTC",
    "+0.75962 BTC",
    "+0.65841 BTC",
    "+0.47865 BTC",
  ];
  List image1 = [
    "asset/image/Vector (1).png",
    "asset/image/Group.png",
    "asset/image/Vector (2).png",
    "asset/image/Mask group (1).png",
    "asset/image/Group 125.png"
  ];
  List text3 = [
    "24 Mar 2022",
    "25 Mar 2022",
    "26 Mar 2022",
    "28 Mar 2022",
  ];
  List<Widget> screen = [
    Transfer(),
    Withdraw(),
    Top_Up(),
    Center(
      child: Text("Deposite"),
    ),
    Elecric()
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: ColorCodes.nevyblue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("asset/image/Image.png"),
                  ),
                  Text(
                    "Rene Wells",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins",
                        color: Colors.white),
                  ),
                  Text(
                    "Roday43@gmail.com",
                    style: TextStyle(
                        // fontSize: 17,
                        // fontWeight: FontWeight.w700,
                        fontFamily: "Poppins",
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      children: [
                        InkResponse(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    index == 2 ? Contact_list() : SizedBox(),
                              ),
                            );
                          },
                          child: Text(
                            drawer[index],
                            style:
                                TextStyle(fontFamily: "Poppins", fontSize: 16),
                          ),
                        ),
                        Spacer(),
                        index == 0
                            ? Switch(
                                value: isswitch,
                                onChanged: (bool value) {
                                  setState(() {});
                                  isswitch = !isswitch;
                                },
                              )
                            : SizedBox(),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.login,
                    color: ColorCodes.Pink,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        color: ColorCodes.Pink,
                        fontFamily: "Poppins",
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
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
              Container(
                height: 80.h,
                width: double.infinity,
              ),
              Positioned(
                bottom: -17.h,
                child: Container(
                  height: 67.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Color(0xffEFF2F4),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.h, top: 2.h),
                        child: Text(
                          "Operations",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontSize: 20.sp),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Container(
                        height: 12.h,
                        //color: Colors.black,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
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
                                      color: Colors.white,
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
                      Padding(
                        padding: EdgeInsets.only(left: 3.h, top: 1.h),
                        child: Text(
                          "Recent Transactions",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          padding: EdgeInsets.symmetric(vertical: 0),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Transfer(),
                                      ),
                                    );
                                  },
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: color[index],
                                      radius: 30,
                                      child: Image.asset(
                                        image1[index],
                                        scale: 4,
                                      ),
                                    ),
                                    title: Text(text1[index],
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500)),
                                    subtitle: Text(
                                      text2[index],
                                      style: TextStyle(fontFamily: "Poppins"),
                                    ),
                                    trailing: Text(text3[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Poppins")),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 59, left: 26),
                  child: Builder(
                    builder: (context) {
                      return InkResponse(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("asset/image/Image.png"),
                          ),
                        ),
                      );
                    },
                  )),
              Positioned(
                right: 30,
                top: 33,
                child: InkResponse(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Notifcation(),
                      ),
                    );
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: ColorCodes.nevyblue,
                    child: Image.asset("asset/image/Group 238.png", scale: 4),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
