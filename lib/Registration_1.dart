import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:sizer/sizer.dart';

import 'Registration_2.dart';

class Registration_1 extends StatefulWidget {
  const Registration_1({Key? key}) : super(key: key);

  @override
  State<Registration_1> createState() => _Registration_1State();
}

class _Registration_1State extends State<Registration_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.75.h,
          ),
          Center(
            child: Image.asset(
              "asset/image/Group 303.png",
              scale: 1,
              // height: 50.h,
              // width: 50.w,
            ),
          ),
          SizedBox(height: 0.3.h),
          Center(
            child: Text(
              "Flowa",
              style: TextStyle(
                  color: ColorCodes.nevyblue,
                  fontFamily: "Titillium Web",
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp),
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Experience the",
              style: TextStyle(
                color: ColorCodes.nevyblue,
                fontFamily: "Titillium Web",
                fontWeight: FontWeight.w600,
                fontSize: 30.sp,
                letterSpacing: 0.5,
                height: 1.2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Text(
                  "easier way ",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: ColorCodes.Pink,
                    fontFamily: "Titillium Web",
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                    letterSpacing: 0.5,
                    height: 1.2,
                  ),
                ),
                Text(
                  "for",
                  style: TextStyle(
                    color: ColorCodes.nevyblue,
                    fontFamily: "Titillium Web",
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                    letterSpacing: 0.5,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "transaction!",
              style: TextStyle(
                color: ColorCodes.nevyblue,
                fontFamily: "Titillium Web",
                fontWeight: FontWeight.w600,
                fontSize: 30.sp,
                letterSpacing: 0.5,
                height: 1.2,
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Connect your money to your\nfriends & brands.",
              style: TextStyle(
                  color: ColorCodes.gray,
                  fontFamily: "Poppins",
                  fontSize: 13.sp,
                  letterSpacing: 0.1),
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          Center(
            child: Container(
              height: 54,
              width: 79.w,
              decoration: BoxDecoration(
                color: ColorCodes.Pink,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register2(),
                        ));
                  },
                  child: Text(
                    "GET STARTED",
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
          ),
        ],
      ),
    );
  }
}
