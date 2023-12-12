import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Balance_Profile.dart';
import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Payment_Details.dart';
import 'Transfer.dart';

class Top_Up extends StatefulWidget {
  const Top_Up({Key? key}) : super(key: key);

  @override
  State<Top_Up> createState() => _Top_UpState();
}

class _Top_UpState extends State<Top_Up> {
  List image1 = [
    "asset/image/Vector (1).png",
    "asset/image/Vector (2).png",
    "asset/image/Mask group (1).png"
  ];
  List color = [
    Color(0xff4F31C2),
    Color(0xffFF9D42),
    Color(0xff011A51),
  ];

  List text1 = [
    "Paypall",
    "Mcdonalds",
    "Amazon",
  ];
  List text2 = [
    "**** *** 2878",
    "**** *** 3720",
    "**** *** 3980",
  ];
  List<double> text3 = [
    5,
    10,
    15,
    20,
    50,
    100,
    500,
    1000,
  ];
  List<Widget> screen = [];
  double slidervalue = 0;
  int select = 0;
  int selected = 0;
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
                    child: Image.asset(ImageConstants.back,
                        height: 9.h, width: 9.w)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 28),
                child: Text(
                  "Transaction Details",
                  style: TextStyle(
                      fontFamily: "Titillium Web",
                      color: ColorCodes.nevyblue,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Text(
              "Amount",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Center(
            child: Text(
              "\$${text3[select].toStringAsFixed(0)}",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Text(
              "Your Balance \$9840.50",
              style: TextStyle(
                color: Colors.black54,
                fontFamily: "Poppins",
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          SliderTheme(
            data: SliderThemeData(
                activeTrackColor: ColorCodes.Pink,
                inactiveTrackColor: Colors.grey.shade200,
                thumbColor: ColorCodes.Pink),
            child: Slider.adaptive(
              onChanged: (value) {
                setState(() {});
                text3[select] = value;
              },
              value: text3[select],
              min: 0,
              max: 9840,
              //label: "\€${slidervalue.toStringAsFixed(2)}",
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Wrap(
              children: List.generate(
                8,
                (index) => InkResponse(
                  onTap: () {
                    setState(() {});
                    select = index;
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         Payment_Detail(amount: text3[index]),
                    //   ),
                    // );
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                    decoration: BoxDecoration(
                      color: select == index ? ColorCodes.Pink : Colors.white,
                      border: Border.all(
                        color:
                            select == index ? ColorCodes.Pink : Colors.black38,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "\$${text3[index].toStringAsFixed(0)}",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: select == index
                                ? ColorCodes.white
                                : ColorCodes.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Center(
                  child: Text(
                    "Wallet Type",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Spacer(),
                Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: ColorCodes.nevyblue,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Column(
            children: List.generate(
              3,
              (index) => Container(
                height: 8.h,
                margin: EdgeInsets.symmetric(vertical: 3),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    selected = index;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment_Detail(
                          wallettype: text1[index],
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: color[index],
                      child: Image.asset(
                        image1[index],
                        scale: 4,
                      ),
                    ),
                    title: Text(
                      text1[index],
                    ),
                    subtitle: Text(text2[index]),
                    trailing: selected == index
                        ? Icon(
                            Icons.check_circle,
                            color: ColorCodes.Pink,
                          )
                        : Icon(
                            Icons.circle,
                            color: Colors.grey.shade300,
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
