import 'dart:async';

import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:sizer/sizer.dart';
import 'package:pinput/pinput.dart';

import 'WelCome.dart';

class Enter_Code extends StatefulWidget {
  const Enter_Code({
    Key? key,
    required this.number,
  }) : super(key: key);
  final number;

  @override
  State<Enter_Code> createState() => _Enter_CodeState();
}

class _Enter_CodeState extends State<Enter_Code> {
  int second = 60;

  void time() {
    Timer.periodic(
      Duration(seconds: 1),
      (timer) {
        setState(() {});
        second--;
        if (second == 0) {
          timer.cancel();
        }
      },
    );
  }

  initState() {
    super.initState();
    time();
  }

  final formkey = GlobalKey<FormState>();
  TextEditingController pinputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3.h),
                Center(
                  child: Text(
                    "Enter Code",
                    style: TextStyle(
                        color: ColorCodes.nevyblue,
                        fontWeight: FontWeight.w500,
                        fontFamily: " Titillium Web",
                        fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "Enter the 6-digit verification sent to",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorCodes.lightgray,
                  ),
                ),
                Text(
                  "+ 91 ${widget.number}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorCodes.lightgray,
                  ),
                ),
                SizedBox(height: 7.h),
                Center(
                  child: Image.asset(
                    "asset/image/Group 262.png",
                    scale: 4,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Pinput(
                    validator: (value) {
                      bool otpValid = RegExp("[0-9]").hasMatch(value!);
                      if (otpValid) {
                        return null;
                      } else {
                        return "Enter Otp";
                      }
                    },
                    controller: pinputController,
                    length: 4,
                    defaultPinTheme: PinTheme(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend code in",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "$second",
                      style: TextStyle(
                          fontFamily: "Poppins", color: ColorCodes.Pink),
                    ),
                    Text(
                      "second",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelCome(),
                            ));
                      }
                    },
                    child: Container(
                      height: 54,
                      width: 85.w,
                      decoration: BoxDecoration(
                        color: ColorCodes.Pink,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          "COUNTINUE",
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
        ),
      ),
    );
  }
}
