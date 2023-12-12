import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Balance_Profile.dart';
import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Transffered_Succesfully.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  List text1 = ["putin", "Lori Bryson", "mary", "tom", "john's"];
  List image = [
    "asset/image/Image (2).png",
    "asset/image/Image (3).png",
    "asset/image/Image (4).png",
    "asset/image/Image (5).png",
    "asset/image/Image (6).png"
  ];
  List text = [100, 150, 200, 250];
  int change = 0;
  int select = 0;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ),
                    );
                  },
                  child: Image.asset(ImageConstants.back,
                      height: 9.h, width: 9.w)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: ColorCodes.nevyblue,
                            size: 20,
                          ),
                          Text(
                            "Send Money",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: ColorCodes.nevyblue,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Choose Account",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: ColorCodes.lightgray,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage("asset/image/Image.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Image.asset("asset/image/Group 259.png"),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Text(
                  "How much you would like to send?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontSize: 15.sp),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {});
                      if (text[select] > 0) {
                        text[select]--;
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.remove),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "${text[select]}",
                    style: TextStyle(
                        color: ColorCodes.nevyblue,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                      text[select]++;
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                height: 5.h,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {});
                        select = index;
                      },
                      child: Container(
                        height: 4.h,
                        width: 20.w,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: select == index
                              ? ColorCodes.yellow
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: select == index
                                  ? ColorCodes.yellow
                                  : Colors.black),
                        ),
                        child: Center(
                          child: Text(
                            "s${text[index].toString()}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Choose Recepient",
                style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontSize: 15.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                height: 10.h,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {});
                              selected = index;
                            },
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                image[index],
                              ),
                            ),
                          ),
                          selected == index
                              ? Text(
                                  text1[index],
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300),
                                )
                              : Text(""),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: ColorCodes.Pink,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "TAKE ME BACK",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.white,
                          letterSpacing: 0.3.w,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Transffered_Succesfully(),
                          ));
                    },
                    child: Container(
                      height: 50,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: ColorCodes.nevyblue,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          "SEND MONEY",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white,
                            letterSpacing: 0.3.w,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
