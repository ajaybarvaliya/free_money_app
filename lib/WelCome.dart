import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:sizer/sizer.dart';

import 'Congratulatins.dart';

class WelCome extends StatefulWidget {
  const WelCome({Key? key}) : super(key: key);

  @override
  State<WelCome> createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {
  bool hide = true;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 4.h),
                Center(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        color: ColorCodes.nevyblue,
                        fontWeight: FontWeight.w500,
                        fontFamily: " Titillium Web",
                        fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "Set a name for your profile, here's\nthe password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: ColorCodes.lightgray,
                  ),
                ),
                SizedBox(height: 7.h),
                Center(
                  child: Container(
                    height: 15.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("asset/image/Vector.png"),
                      ),
                    ),
                    child: Image.asset(
                      "asset/image/Group 243.png",
                      scale: 4,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  validator: (value) {
                    bool emailValid = RegExp("[a-z]"
                            // "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$"
                            )
                        .hasMatch(value!);

                    if (emailValid) {
                      return null;
                    } else {
                      return "Enter Email Address";
                    }
                  },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: 85.w,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                TextFormField(
                  validator: (value) {
                    bool nameValid = RegExp("[a-z]").hasMatch(value!);

                    if (nameValid) {
                      return null;
                    } else {
                      return "Enter name Address";
                    }
                  },
                  controller: namecontroller,
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: 85.w,
                    ),
                    labelText: "Name",
                    labelStyle: TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                TextFormField(
                  validator: (value) {
                    bool passValid = RegExp("[a-z]").hasMatch(value!);

                    if (passValid) {
                      return null;
                    } else {
                      return "Enter password Address";
                    }
                  },
                  controller: passcontroller,
                  obscureText: hide,
                  decoration: InputDecoration(
                    constraints: BoxConstraints(
                      maxWidth: 85.w,
                    ),
                    labelText: "Password",
                    suffixIcon: InkResponse(
                      onTap: () {
                        setState(() {});
                        hide = !hide;
                      },
                      child: Icon(hide == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    labelStyle: TextStyle(
                      fontFamily: "Poppins",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Congratulations(),
                        ),
                      );
                    }
                  },
                  child: Center(
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
