import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BottomNavigationBar.dart';
import 'Comon.dart';

class profile_general extends StatefulWidget {
  const profile_general({Key? key}) : super(key: key);

  @override
  State<profile_general> createState() => _profile_generalState();
}

class _profile_generalState extends State<profile_general> {
  List image = [
    "asset/image/Security.png",
    "asset/image/help.png",
    "asset/image/privacy policy.png"
  ];
  List text1 = ["Security", "Help", "Privacy Policy"];
  List text2 = [
    "Your Password Acount",
    "Need More Help",
    "Your Password Acount"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ),
                    );
                  },
                  child:
                      Image.asset(ImageConstants.back, height: 9.h, width: 9.w),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 90),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontFamily: "Titillium Web",
                      color: ColorCodes.nevyblue,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("asset/image/Image (7).png"),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Center(
            child: Text(
              "Rene Wells",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: ColorCodes.nevyblue,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Roday43@gmail.com",
              style: TextStyle(
                fontFamily: "Poppins",
                color: ColorCodes.black,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 80,
              width: 340,
              decoration: BoxDecoration(
                color: ColorCodes.Pink,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Column(
                      children: [
                        Text(
                          "Income",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white60,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "\$3460",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Divider(
                        endIndent: 10,
                        indent: 10,
                        color: Colors.white,
                        thickness: 1.3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Column(
                      children: [
                        Text(
                          "Outcome",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white60,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "\$2500",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "General",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: ColorCodes.nevyblue,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 300,
            child: ListView.builder(
              itemCount: 3,
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 350,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black38),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Image.asset(
                            image[index],
                            scale: 4,
                          ),
                          title: Text(
                            text1[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: "Poppins",
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(text2[index],
                              style: TextStyle(color: Colors.black38)),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
