import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BottomNavigationBar.dart';
import 'Comon.dart';

class Notifcation extends StatefulWidget {
  const Notifcation({Key? key}) : super(key: key);

  @override
  State<Notifcation> createState() => _NotifcationState();
}

class _NotifcationState extends State<Notifcation> {
  List image = [
    "asset/image/Transfer.png",
    "asset/image/Top Up.png",
    "",
    "asset/image/Shopping.png",
    "asset/image/Voucher.png",
    "asset/image/Grab Pay.png",
    "asset/image/Game TopUp.png",
    "asset/image/Add card.png",
  ];
  List text1 = [
    "Tansfer",
    "Top Up",
    "",
    "Shopping",
    "Voucher",
    "Grab Pay",
    "Game Top up",
    "Add card "
  ];
  List text2 = [
    "You have transferred an",
    "You have top up an",
    "",
    "you shop for shoes",
    "You pay the electric ",
    "You pay the Grab pay",
    "up You pay the Game",
    "You have add card stela"
  ];
  List text3 = [
    "amount \$876 to Jasson sterek",
    "amount \$20 to shoppe pay",
    "",
    "on Gemolis.com",
    "voucher amount \$10",
    "amount \$15",
    "top up amount \$25 ",
    "bank"
  ];
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
                  "Notifcation ",
                  style: TextStyle(
                      fontFamily: "Titillium Web",
                      color: ColorCodes.nevyblue,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return index == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Text(
                          "Recent",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: "poppins",
                          ),
                        ),
                      )
                    : Divider(
                        height: 20,
                      );
              },
              itemCount: 9,
              separatorBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    index == 2
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Yesterday",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: "poppins",
                              ),
                            ),
                          )
                        : Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.white),
                            child: Image.asset(image[index]),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              index == 2
                                  ? SizedBox()
                                  : Text(
                                      text1[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "poppins",
                                        fontSize: 14,
                                        color: Color(0xffFF897E),
                                      ),
                                    ),
                              index == 2
                                  ? SizedBox()
                                  : Text(
                                      (text2[index]),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "poppins",
                                        fontSize: 14,
                                        color: Color(0xffA6A2A2),
                                      ),
                                    ),
                            ],
                          ),
                          index == 2
                              ? SizedBox()
                              : Text(
                                  text3[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "poppins",
                                    fontSize: 14,
                                    color: Color(0xffA6A2A2),
                                  ),
                                )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
