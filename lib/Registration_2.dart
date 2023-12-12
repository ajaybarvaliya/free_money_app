import 'package:country_picker/country_picker.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Enter_Code.dart';

class Register2 extends StatefulWidget {
  const Register2({Key? key}) : super(key: key);

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  TextEditingController numberctnrl = TextEditingController();
  final formkey = GlobalKey<FormState>();

  String countryCode = "91";
  String countryCodeIMage = "IN";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Center(
                  child: Text(
                    "Registration",
                    style: TextStyle(
                        color: ColorCodes.nevyblue,
                        fontWeight: FontWeight.w500,
                        fontFamily: " Titillium Web",
                        fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 1.h),
                Center(
                  child: Text(
                    "Enter your mobile phone number, we will send\nyou OTP to verify later.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: ColorCodes.lightgray,
                    ),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Center(
                  child: Image.asset(
                    "asset/image/Group 261.png",
                    scale: 4,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: TextFormField(
                    validator: (value) {
                      bool tokenValid = RegExp("[0-9]").hasMatch(value!);
                      if (tokenValid) {
                        return null;
                      } else {
                        return "Enter Number";
                      }
                    },
                    controller: numberctnrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        labelText: "Number Phone",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 18),
                        prefix: Container(
                          height: 20,
                          width: 80,
                          child: GestureDetector(
                            onTap: () {
                              showCountryPicker(
                                context: context,
                                showPhoneCode: true,
                                onSelect: (Country country) {
                                  print('Select country: ${country.phoneCode}');
                                  countryCode = country.phoneCode;
                                  countryCodeIMage = country.countryCode;
                                  print('Select country: ${countryCodeIMage}');
                                  setState(() {});
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Flag.fromString(countryCodeIMage,
                                      height: 15,
                                      width: 30,
                                      fit: BoxFit.contain),
                                  Text("+$countryCode"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Enter_Code(
                              number: numberctnrl.text,
                            ),
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
                          "SEND VIA SMS",
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
                  height: 2.h,
                ),
                Center(
                  child: Container(
                    height: 54,
                    width: 85.w,
                    decoration: BoxDecoration(
                      color: ColorCodes.nevyblue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "SEND VIA WHATSAPP",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: ColorCodes.white,
                          letterSpacing: 0.3.w,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Center(
                  child: Text(
                    "By creating and/or using an account, you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorCodes.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "agree to our ",
                      style: TextStyle(
                        color: ColorCodes.black,
                      ),
                    ),
                    Text(
                      "Terms & Conditions.",
                      style: TextStyle(
                        color: ColorCodes.lightpink,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
