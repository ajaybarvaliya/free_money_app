import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Login.dart';

class Reset_Password extends StatefulWidget {
  const Reset_Password({Key? key}) : super(key: key);

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  bool hide = true;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  String name = "Ajay";
  String pass = "AJAY123";

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
                  Image.asset(ImageConstants.back, height: 9.h, width: 9.w),
                  SizedBox(
                    height: 3.h,
                  ),
                  Center(
                    child: Image.asset(
                      "asset/image/Group 268.png",
                      scale: 3.50,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Center(
                    child: Text(
                      "Reset Password",
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
                  SizedBox(height: 5.h),
                  Center(
                    child: TextFormField(
                      validator: (value) {
                        bool namelValid = RegExp("[a-z]").hasMatch(value!);
                        if (namelValid) {
                          return null;
                        } else {
                          return "Enter Password";
                        }
                      },
                      controller: namecontroller,
                      obscureText: hide,
                      decoration: InputDecoration(
                        suffixIcon: InkResponse(
                          onTap: () {
                            setState(
                              () {},
                            );
                            hide = !hide;
                          },
                          child: Icon(hide == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        labelText: "New Password",
                        constraints: BoxConstraints(maxWidth: 85.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Center(
                    child: TextFormField(
                      validator: (value) {
                        bool passValid = RegExp("[a-z]").hasMatch(value!);
                        if (passValid) {
                          return null;
                        } else {
                          return "Enter Password";
                        }
                      },
                      controller: passcontroller,
                      decoration: InputDecoration(
                        labelText: "Reset Password",
                        constraints: BoxConstraints(maxWidth: 85.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle_outlined,
                                color: ColorCodes.white,
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                "SUBMITING",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  letterSpacing: 0.3.w,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
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
