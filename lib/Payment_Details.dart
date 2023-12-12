import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Balance_Profile.dart';
import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Top_Up.dart';

class Payment_Detail extends StatefulWidget {
  String? wallettype;
  int? amount;
  Payment_Detail({Key? key, this.wallettype, this.amount}) : super(key: key);

  @override
  State<Payment_Detail> createState() => _Payment_DetailState();
}

class _Payment_DetailState extends State<Payment_Detail> {
  List text = [
    "Transfer Visa",
    "Transfer Sona Bank",
    "Transfer Getek Bank",
    "Transfer Ateul Bank",
  ];
  List image = [
    "asset/image/Group 54.png",
    "asset/image/Group 54 (1).png",
    "asset/image/Group 54 (2).png",
    "asset/image/Group 54 (3).png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Top_Up(),
                    ),
                  );
                },
                child: Icon(
                  Icons.close,
                  size: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Center(
            child: Container(
              height: 70.h,
              width: 85.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      "Payment Details",
                      style: TextStyle(
                          fontFamily: "Titillium Web",
                          color: ColorCodes.nevyblue,
                          fontWeight: FontWeight.w700,
                          fontSize: 23),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Text(
                              "Amount",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: "Poppins"),
                            ),
                            Spacer(),
                            Text(
                              "\$${widget.amount?.toInt()}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            Text(
                              "Top up Type",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: "Poppins"),
                            ),
                            Spacer(),
                            Text(
                              widget.wallettype ?? "",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            Text(
                              "Transaction ID",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: "Poppins"),
                            ),
                            Spacer(),
                            Text(
                              "234795-7456-0008",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            Text(
                              "Time & Date",
                              style: TextStyle(
                                  color: Colors.black54, fontFamily: "Poppins"),
                            ),
                            Spacer(),
                            Text(
                              "01/03/22 , 11:00 AM",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),

                  /// Payment details
                  Center(
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 600,
                              width: 360,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Choose payment methode",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: ColorCodes.black,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Spacer(),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Payment_Detail(),
                                              ),
                                            );
                                          },
                                          child: Icon(
                                            Icons.close,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Text(
                                      "Manual Verification",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: ColorCodes.black,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.w,
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: 4,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          height: 12.h,
                                          width: 80.w,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.black38),
                                          ),
                                          child: Center(
                                            child: ListTile(
                                              leading: Image.asset(
                                                image[index],
                                              ),
                                              title: Text(
                                                text[index],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontFamily: "Poppins",
                                                  color: Colors.black,
                                                ),
                                              ),
                                              subtitle: Text("******3298",
                                                  style: TextStyle(
                                                      color: Colors.black38)),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 10.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade100,
                        ),
                        child: Center(
                          child: Text(
                            "Choose payment methode",
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorCodes.nevyblue,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image.asset("asset/image/logo.png", scale: 4),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "All your transactions are safe and fast,\nBy continuing this transaction, you",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: "Poppins",
                                  fontSize: 12),
                            ),
                            Row(
                              children: [
                                Text(
                                  "agree to our",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: "Poppins",
                                      fontSize: 12),
                                ),
                                Text(
                                  "Terms & Conditions",
                                  style: TextStyle(
                                      color: ColorCodes.Pink,
                                      fontFamily: "Poppins",
                                      fontSize: 12),
                                ),
                              ],
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
            child: InkResponse(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: Container(
                        height: 60.h,
                        width: 85.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Image.asset("asset/image/Group 60.png", scale: 3),
                            Text(
                              "Transaction Successful",
                              style: TextStyle(
                                fontSize: 19.sp,
                                fontFamily: "Titillium Web",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Eu dolor, bibendum\npurus eu mi, purus lorem. ",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(height: 1.5, color: Colors.black38),
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
                                  child: InkResponse(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                BottomNavBar(),
                                          ));
                                    },
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
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 50,
                width: 50.w,
                decoration: BoxDecoration(
                  color: ColorCodes.Pink,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "SEND MONEY",
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
    );
  }
}
