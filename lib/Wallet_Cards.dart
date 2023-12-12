import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Scan_Your_Card.dart';
import 'Wallet_Aaccount.dart';

class Wallet_Cards extends StatefulWidget {
  const Wallet_Cards({Key? key}) : super(key: key);

  @override
  State<Wallet_Cards> createState() => _Wallet_CardsState();
}

class _Wallet_CardsState extends State<Wallet_Cards> {
  int select = 0;
  List text = [
    "Cards",
    "Bank accounts",
  ];
  List<Widget> screens = [
    BottomNavBar(),
    Wallet_account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
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
                            builder: (context) => BottomNavBar(),
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
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                "asset/image/Group 259 (2).png",
                scale: 4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset("asset/image/Income.png", scale: 3.59),
                    Image.asset("asset/image/exp inc card.png", scale: 3.59),
                  ],
                ),
                Image.asset(
                  "asset/image/balance is.png",
                  scale: 4.50,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Analytics",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorCodes.nevyblue,
                    fontSize: 20,
                    fontFamily: "Poppins"),
              ),
            ),
            Container(
              height: 11.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  2,
                  (index) => InkResponse(
                    onTap: () {
                      setState(() {});
                      select = index;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screens[index],
                        ),
                      );
                    },
                    child: Container(
                      width: 39.w,
                      height: 9.h,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: select == index ? ColorCodes.Pink : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          text[index],
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              color: select == index
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scan_Your_Card(),
                    ),
                  );
                },
                child: Image.asset(
                  "asset/image/scan card.png",
                  scale: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
