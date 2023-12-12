import 'package:flutter/material.dart';
import 'package:free_money_transfer/Login.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Reset_Password.dart';

class Forget_Password extends StatefulWidget {
  const Forget_Password({Key? key}) : super(key: key);

  @override
  State<Forget_Password> createState() => _Forget_PasswordState();
}

class _Forget_PasswordState extends State<Forget_Password> {
  TextEditingController emailcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: Image.asset(ImageConstants.back,
                          height: 9.h, width: 9.w)),
                  SizedBox(
                    height: 3.h,
                  ),
                  Center(
                    child: Image.asset(
                      "asset/image/Group 266.png",
                      scale: 3.50,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Center(
                    child: Text(
                      "Forgot Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ColorCodes.nevyblue,
                          fontWeight: FontWeight.w500,
                          fontFamily: " Titillium Web",
                          fontSize: 19.sp),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Center(
                    child: Text(
                      "Set a name for your profile, here's\nthe password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: ColorCodes.lightgray,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: TextFormField(
                      validator: (value) {
                        bool emailidlValid = RegExp("[a-z]").hasMatch(value!);
                        if (emailidlValid) {
                          return null;
                        } else {
                          return "Enter Email ID Address";
                        }
                      },
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        labelText: "Email ID",
                        constraints: BoxConstraints(maxWidth: 85.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Reset_Password()),
                          );
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
                            "NEXT",
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
      ),
    );
  }
}
