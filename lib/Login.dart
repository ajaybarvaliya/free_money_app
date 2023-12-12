import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Balance_Profile.dart';
import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Forget_Password.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hide = true;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Image.asset(
                "asset/image/Group 266.png",
                scale: 3.50,
              ),
              SizedBox(height: 5.h),
              Center(
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorCodes.nevyblue,
                      fontWeight: FontWeight.w500,
                      fontFamily: " Titillium Web",
                      fontSize: 19.sp),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "Set a name for your profile, here's\nthe password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: ColorCodes.lightgray,
                ),
              ),
              SizedBox(height: 6.h),
              TextFormField(
                validator: (value) {
                  bool namelValid = RegExp("[a-z]").hasMatch(value!);
                  if (namelValid) {
                    return null;
                  } else {
                    return "Enter name Address";
                  }
                },
                controller: namecontroller,
                decoration: InputDecoration(
                  labelText: "Name",
                  constraints: BoxConstraints(maxWidth: 85.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              TextFormField(
                validator: (value) {
                  bool passValid = RegExp("[a-z]").hasMatch(value!);
                  if (passValid) {
                    return null;
                  } else {
                    return "Enter Password";
                  }
                },
                controller: passcontroller,
                obscureText: hide,
                decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: InkResponse(
                      onTap: () {
                        setState(
                          () {},
                        );
                        hide = !hide;
                      },
                      child: Icon(hide == true
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  constraints: BoxConstraints(maxWidth: 85.w),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 1.h,
                  left: 22.h,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forget_Password(),
                        ));
                  },
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
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
                          builder: (context) => BottomNavBar(),
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
                      child: Text(
                        "LOGIN",
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
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "Signup",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: ColorCodes.Pink,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
