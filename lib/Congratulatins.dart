import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:free_money_transfer/Login.dart';
import 'package:sizer/sizer.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 60.h,
              width: 80.w,
              decoration: BoxDecoration(
                color: ColorCodes.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h),
                  Center(
                    child: Text(
                      "Congratulation, Now you\nare registered!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ColorCodes.nevyblue,
                          fontWeight: FontWeight.w500,
                          fontFamily: " Titillium Web",
                          fontSize: 17.sp),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Start using the app, Pay attention\nto the rules in the application",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: ColorCodes.lightgray,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Image.asset(
                    "asset/image/Group 265.png",
                    scale: 3,
                  ),
                  SizedBox(height: 5.h),
                  Center(
                    child: Container(
                      height: 54,
                      width: 70.w,
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
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Text(
                            "START",
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
            ),
          )
        ],
      ),
    );
  }
}
