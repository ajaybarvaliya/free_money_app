import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Internet_Data.dart';

class Confirm_Internet_Data extends StatefulWidget {
  String? pacage;
  Confirm_Internet_Data({Key? key, this.pacage}) : super(key: key);

  @override
  State<Confirm_Internet_Data> createState() => _Confirm_Internet_DataState();
}

class _Confirm_Internet_DataState extends State<Confirm_Internet_Data> {
  TextEditingController loricontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  int lori = 1234;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
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
                              builder: (context) => Internet_Data(),
                            ),
                          );
                        },
                        child: Image.asset(ImageConstants.back,
                            height: 9.h, width: 9.w)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 90),
                    child: Text(
                      "Internet Data",
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
                height: 10,
              ),
              Center(
                child: Image.asset(
                  "asset/image/Group 292 (1).png",
                  scale: 2,
                  width: 330,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Choose Package",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: ColorCodes.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Confirm Internet Data",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: ColorCodes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 11.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Package",
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          widget.pacage ?? "",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Container(
                  height: 11.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: TextFormField(
                      validator: (value) {
                        bool bankValid = RegExp("[0-9]").hasMatch(value!);
                        if (bankValid) {
                          return null;
                        } else {
                          return "Enter Number";
                        }
                      },
                      controller: loricontroller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        labelText: "Lori Bryson",
                        labelStyle: TextStyle(
                          fontFamily: "Poppins",
                        ),
                        // constraints: BoxConstraints(maxWidth: 300),
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
                  height: 11.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Amount",
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Fee",
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Free",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              InkResponse(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    if (lori == loricontroller.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Center(
                            child: Text("done"),
                          ),
                        ),
                      );
                    } else {
                      if (lori != loricontroller.text) {
                        (ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Invalid Number"),
                          ),
                        ));
                      }
                    }
                  }
                },
                child: Center(
                  child: Container(
                    height: 54,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: ColorCodes.Pink,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "BUY",
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
    );
  }
}
