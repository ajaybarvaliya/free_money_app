import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:sizer/sizer.dart';

import 'Transfer.dart';

class Transffered_Succesfully extends StatefulWidget {
  const Transffered_Succesfully({Key? key}) : super(key: key);

  @override
  State<Transffered_Succesfully> createState() =>
      _Transffered_SuccesfullyState();
}

class _Transffered_SuccesfullyState extends State<Transffered_Succesfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Transfer(),
                      ),
                    );
                  },
                  child: Icon(Icons.close, size: 30)),
              SizedBox(
                height: 8.h,
              ),
              Center(
                child: Container(
                  height: 60.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    color: ColorCodes.nevyblue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Container(
                          height: 14.h,
                          width: 14.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("asset/image/Ellipse 75.png"),
                            ),
                          ),
                          child: Image.asset("asset/image/Vector (3).png",
                              scale: 5),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Center(
                        child: Text(
                          "Transffered Succesfully",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: "Titillium Web",
                              fontSize: 18.sp),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        endIndent: 20,
                        indent: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: "Poppins"),
                                ),
                                Spacer(),
                                Text(
                                  "Rene wells",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              children: [
                                Text(
                                  "Transaction ID",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              children: [
                                Text(
                                  "Amount",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: "Poppins"),
                                ),
                                Spacer(),
                                Text(
                                  "\$456.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              children: [
                                Text(
                                  "Transfer cost",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: "Poppins"),
                                ),
                                Spacer(),
                                Text(
                                  "\$00.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              children: [
                                Text(
                                  "Time & Date",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontFamily: "Poppins"),
                                ),
                                Spacer(),
                                Text(
                                  "01/03/22 , 11:00 AM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Poppins"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: ColorCodes.Pink,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      "DONE",
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
            ],
          ),
        ),
      ),
    );
  }
}
