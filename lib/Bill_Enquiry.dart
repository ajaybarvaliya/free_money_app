import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Electric.dart';
import 'Electric_2.dart';

class Bill_Enquiry extends StatefulWidget {
  const Bill_Enquiry({Key? key}) : super(key: key);

  @override
  State<Bill_Enquiry> createState() => _Bill_EnquiryState();
}

class _Bill_EnquiryState extends State<Bill_Enquiry> {
  List<Widget> screens = [
    Electric_2(),
    Bill_Enquiry(),
  ];
  List image = [
    "asset/image/electric home (1).png",
    "asset/image/electric office.png",
    "asset/image/Villa bali.png"
  ];

  List text1 = ["My House", "Electric Office", "VIlla Bali"];
  List text2 = ["**** *** 3980", "**** *** 3980", "**** *** 3980"];
  List text3 = ["\$15", "\$35", "\$5"];
  List text = ["Electricity Token", "Bills"];

  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 20, top: 15),
          //       child: InkWell(
          //           onTap: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => Elecric(),
          //               ),
          //             );
          //           },
          //           child: Image.asset(ImageConstants.back,
          //               height: 9.h, width: 9.w)),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 18, left: 100, right: 20),
          //       child: Text(
          //         "Electric",
          //         style: TextStyle(
          //             fontFamily: "Titillium Web",
          //             color: ColorCodes.nevyblue,
          //             fontWeight: FontWeight.w700,
          //             fontSize: 16.sp),
          //       ),
          //     ),
          //   ],
          // ),
          // Container(
          //   height: 11.h,
          //   width: 90.w,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: List.generate(
          //       2,
          //       (index) => InkResponse(
          //         onTap: () {
          //           setState(() {});
          //           select = index;
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => screens[index],
          //             ),
          //           );
          //         },
          //         child: Container(
          //           width: 39.w,
          //           height: 9.h,
          //           margin: EdgeInsets.symmetric(horizontal: 10),
          //           decoration: BoxDecoration(
          //             color:
          //                 select == index ? Colors.white : ColorCodes.nevyblue,
          //             borderRadius: BorderRadius.circular(10),
          //           ),
          //           child: Center(
          //             child: Text(
          //               text[index],
          //               style: TextStyle(
          //                   fontFamily: "Poppins",
          //                   fontWeight: FontWeight.w700,
          //                   color:
          //                       select == index ? Colors.black : Colors.white),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 5.h,
          // ),
          SizedBox(
            height: 10,
          ),
          Image.asset("asset/image/Electric.png", scale: 4),
          SizedBox(
            height: 1.5.h,
          ),
          Text(
            "\$50.00",
            style: TextStyle(
                fontSize: 25,
                color: ColorCodes.black,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 0.1.h,
          ),
          Text(
            "need to be pay",
            style: TextStyle(
                fontFamily: "Poppins", color: Colors.black38, fontSize: 12),
          ),
          Spacer(),
          Container(
            height: 400,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Bills Enquiry",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontFamily: "Poppins", color: ColorCodes.Pink),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.4.h,
                ),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 3,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 11.h,
                        width: 80.w,
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
                            trailing: Text(
                              text3[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
