import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Withdraw.dart';

class Confirm_Withdraw extends StatefulWidget {
  const Confirm_Withdraw({Key? key}) : super(key: key);

  @override
  State<Confirm_Withdraw> createState() => _Confirm_WithdrawState();
}

class _Confirm_WithdrawState extends State<Confirm_Withdraw> {
  TextEditingController amountcontroller = TextEditingController();
  TextEditingController bankcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  int amount = 100;
  int bank = 1234;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
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
                              builder: (context) => Withdraw(),
                            ),
                          );
                        },
                        child: Image.asset(ImageConstants.back,
                            height: 9.h, width: 9.w)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 90),
                    child: Text(
                      "Withdarw ",
                      style: TextStyle(
                          fontFamily: "Titillium Web",
                          color: ColorCodes.nevyblue,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                  ),
                ],
              ),
              Container(
                height: 500,
                width: 310,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Confirm Withdraw",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          fontFamily: "Poppins"),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 11.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 10),
                        child: TextFormField(
                          validator: (value) {
                            bool amountValid = RegExp("[0-9]").hasMatch(value!);
                            if (amountValid) {
                              return null;
                            } else {
                              return "Enter amount";
                            }
                          },
                          keyboardType: TextInputType.number,
                          controller: amountcontroller,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 3),
                            constraints: BoxConstraints(maxHeight: 50),
                            // fillColor: Colors.black54,
                            // filled: true,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            labelText: "Amount",
                            labelStyle: TextStyle(
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      height: 11.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 20, bottom: 10),
                        child: TextFormField(
                          validator: (value) {
                            bool bankValid = RegExp("[0-9]").hasMatch(value!);
                            if (bankValid) {
                              return null;
                            } else {
                              return "Enter account Number";
                            }
                          },
                          controller: bankcontroller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            // fillColor: Colors.black54,
                            // filled: true,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            labelText: "Bank Account",
                            labelStyle: TextStyle(
                              fontFamily: "Poppins",
                            ),
                            // constraints: BoxConstraints(maxWidth: 300),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
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
                                  "\$250",
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
                    SizedBox(
                      height: 5.h,
                    ),
                    InkResponse(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          if (amount != amountcontroller.text) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Text("done"),
                              ),
                            );
                          } else {
                            if (amount == amountcontroller.text) {
                              (ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Invalid amount"),
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
                              "WITHDRAW",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
