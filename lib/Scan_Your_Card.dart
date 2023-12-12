import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Add_New_Card.dart';
import 'Comon.dart';
import 'Wallet_Cards.dart';

class Scan_Your_Card extends StatefulWidget {
  const Scan_Your_Card({Key? key}) : super(key: key);

  @override
  State<Scan_Your_Card> createState() => _Scan_Your_CardState();
}

class _Scan_Your_CardState extends State<Scan_Your_Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        builder: (context) => Wallet_Cards(),
                      ),
                    );
                  },
                  child:
                      Image.asset(ImageConstants.back, height: 9.h, width: 9.w),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 68),
                child: Text(
                  "Scan your card ",
                  style: TextStyle(
                      fontFamily: "Titillium Web",
                      color: ColorCodes.nevyblue,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Card Number",
            style: TextStyle(
                fontFamily: "Poppins", fontSize: 16, color: Colors.black38),
          ),
          Text(
            "0045 4768 243 0098",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                fontSize: 16,
                color: Colors.black),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset(
            "asset/image/Group 82.png",
            height: 300,
            width: 320,
          ),
          SizedBox(
            height: 110,
          ),
          Image.asset("asset/image/Icon scan.png", scale: 3),
          Text(
            "Or",
          ),
          SizedBox(
            height: 10,
          ),
          InkResponse(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Add_New_Card(),
                ),
              );
            },
            child: Center(
              child: Container(
                height: 54,
                width: 80.w,
                decoration: BoxDecoration(
                  color: ColorCodes.Pink,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    "MANUAL",
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
