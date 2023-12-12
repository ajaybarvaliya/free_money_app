import 'package:flutter/material.dart';
import 'package:free_money_transfer/Comon.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_line/dotted_line.dart';

import 'Confirm_Internet_Data.dart';

class Internet_Data extends StatefulWidget {
  Internet_Data({Key? key}) : super(key: key);

  @override
  State<Internet_Data> createState() => _Internet_DataState();
}

class _Internet_DataState extends State<Internet_Data> {
  int select = 0;
  List image = [
    "asset/image/Freedom internet.png",
    "asset/image/Freedom apps.png",
    "asset/image/Daily kuota.png"
  ];
  List text = [
    "Freedom Internet\n30 Day",
    "Freedom Apps Ytube,\nNetflix, IG , More ...",
    "Daily kuota freedom\n2GB/Day"
  ];
  List text2 = ["\$10", "\$20", "\$25"];
  List text3 = [
    "New 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day",
    "Fun 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day",
    "Fun 42 GB + Call 2hours + Streaming 5 Gb ,\nActive 30 Day",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 240,
                width: 360,
                color: ColorCodes.nevyblue,
                child: Column(
                  children: [
                    SafeArea(
                      child: Text(
                        "Internet Data ",
                        style: TextStyle(
                            fontFamily: "Titillium Web",
                            color: ColorCodes.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: -30,
                child: Image.asset(
                  "asset/image/Group 292 (1).png",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 36,
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
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: List.generate(
                3,
                (index) => InkResponse(
                  onTap: () {
                    setState(() {});
                    select = index;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Confirm_Internet_Data(pacage: text[index]),
                      ),
                    );
                  },
                  child: Container(
                    height: 130,
                    width: 320,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1.5,
                        color:
                            select == index ? ColorCodes.Pink : Colors.black38,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 23,
                                child: Image.asset(
                                  image[index],
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                text2[index],
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black38,
                            dashRadius: 0.50,
                            dashGapLength: 1.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                        ),
                        Text(
                          text3[index],
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black38,
                              fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
