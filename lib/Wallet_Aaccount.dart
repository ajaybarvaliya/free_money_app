import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Balance_Profile.dart';
import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Wallet_Cards.dart';

class Wallet_account extends StatefulWidget {
  const Wallet_account({Key? key}) : super(key: key);

  @override
  State<Wallet_account> createState() => _Wallet_accountState();
}

class _Wallet_accountState extends State<Wallet_account> {
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
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
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
              height: 30,
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
                        color: select == index ? Colors.white : ColorCodes.Pink,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          text[index],
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w700,
                              color: select == index
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 170,
              width: double.infinity,
              child: PageViewDemo(),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Card Number",
                labelStyle:
                    TextStyle(fontFamily: "Poppins", color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(20),
                ),
                constraints: BoxConstraints(maxWidth: 320),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "Expire Date",
                      labelStyle:
                          TextStyle(fontFamily: "Poppins", color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      constraints: BoxConstraints(maxWidth: 150),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Spacer(),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "CVC/CVV",
                      labelStyle:
                          TextStyle(fontFamily: "Poppins", color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      constraints: BoxConstraints(maxWidth: 150),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Cardholder Name",
                labelStyle:
                    TextStyle(fontFamily: "Poppins", color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(20),
                ),
                constraints: BoxConstraints(maxWidth: 320),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                labelText: "Adress",
                labelStyle:
                    TextStyle(fontFamily: "Poppins", color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(20),
                ),
                constraints: BoxConstraints(maxWidth: 320),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      controller: _controller,
      children: const [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyBox(
          mediumGreen,
          text: 'PageView 1',
        ),
      ],
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const MyBox(mediumBlue, text: 'PageView 2'),
      ],
    );
  }
}

class MyPage3Widget extends StatelessWidget {
  const MyPage3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyBox(
          mediumRed,
          text: 'PageView 3',
        ),
      ],
    );
  }
}

const mediumBlue = ColorCodes.lightpink;

final mediumGreen = Colors.greenAccent.shade200;

final mediumRed = ColorCodes.nevyblue;

class MyBox extends StatelessWidget {
  final Color color;
  final double? height;
  final String? text;

  const MyBox(this.color, {super.key, this.height, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 170,
      width: 400,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Visa Card",
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ),
                Spacer(),
                Image.asset(
                  "asset/image/image 3.png",
                  scale: 3,
                )
              ],
            ),
            Text(
              "\$3500.00",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "****3298",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "Visa Card",
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
