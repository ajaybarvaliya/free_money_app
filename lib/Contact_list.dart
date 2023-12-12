import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'BottomNavigationBar.dart';
import 'Comon.dart';

class Contact_list extends StatefulWidget {
  const Contact_list({Key? key}) : super(key: key);

  @override
  State<Contact_list> createState() => _Contact_listState();
}

class _Contact_listState extends State<Contact_list> {
  List color = [
    Color(0xffA3ACFF),
    Color(0xffEFAFFF),
    Color(0xffA3F9FF),
    Color(0xffFFA3A3),
    Color(0xffA3ACFF),
    Color(0xffA3ACFF),
  ];
  List image = [
    "asset/image/M-1.png",
    "asset/image/M-2.png",
    "asset/image/M-3.png",
    "asset/image/M-4.png",
  ];
  List text = ["Edwardo", "Jasson", "Kemod", "Dasep"];
  List image2 = [
    "asset/image/D.png",
    "asset/image/B.png",
    "asset/image/R.png",
    "asset/image/E.png",
    "asset/image/S.png",
    "asset/image/N.png",
  ];
  List image1 = [
    "asset/image/c-2.png",
  ];
  List text3 = [
    "Diani Otelanis Teori",
    "Bahrun ST",
    "Ririn Panjaitan spd",
    "Eki Sulungpati Mpd",
    "Septiani Destri seulo",
    "Nuni Eksitin",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
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
                        height: 9.h, width: 9.w),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 90),
                  child: Text(
                    "Contact List",
                    style: TextStyle(
                        fontFamily: "Titillium Web",
                        color: ColorCodes.nevyblue,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Recent contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w900,
                fontFamily: "Poppins",
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 86,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(image[index]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text[index],
                          style: TextStyle(
                            fontFamily: "Poppins",
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "All contact",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w900,
                fontFamily: "Poppins",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              padding: EdgeInsets.symmetric(vertical: 0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: color[index],
                      radius: 30,
                      child: Image.asset(
                        image2[index],
                        scale: 3,
                      ),
                    ),
                    title: Text(
                      text3[index],
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    subtitle: Text(
                      "+62898023450",
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
