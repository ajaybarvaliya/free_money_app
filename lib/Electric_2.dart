import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Bill_Enquiry.dart';
import 'Comon.dart';
import 'Electric.dart';

class Electric_2 extends StatefulWidget {
  const Electric_2({Key? key}) : super(key: key);

  @override
  State<Electric_2> createState() => _Electric_2State();
}

class _Electric_2State extends State<Electric_2> {
  List<Widget> screens = [
    Electric_2(),
    Bill_Enquiry(),
  ];
  int select = 0;

  List text = ["Electricity Token", "Bills"];

  TextEditingController tokencontroller = TextEditingController();
  TextEditingController amountcontroller = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 20, top: 15),
              //       child: InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => Elecric(),
              //             ),
              //           );
              //         },
              //         child: Image.asset(ImageConstants.back,
              //             height: 9.h, width: 9.w),
              //       ),
              //     ),
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(top: 18, left: 100, right: 20),
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
              //             color: select == index
              //                 ? ColorCodes.nevyblue
              //                 : Colors.white,
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           child: Center(
              //             child: Text(
              //               text[index],
              //               style: TextStyle(
              //                   fontFamily: "Poppins",
              //                   fontWeight: FontWeight.w700,
              //                   color: select == index
              //                       ? Colors.white
              //                       : Colors.black),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   height: 120,
              //   width: 330,
              //   color: Colors.black54,
              //   child: TabBar(
              //     indicator: BoxDecoration(
              //         borderRadius: BorderRadius.circular(50), // Creates border
              //         color: Colors
              //             .greenAccent), //Change background color from here
              //     tabs: [
              //       Text("Electricity Token"),
              //       Text("Bills"),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 8.h,
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 11.h,
                width: 90.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        TextFormField(
                          validator: (value) {
                            bool tokenValid = RegExp("[0-9]").hasMatch(value!);
                            if (tokenValid) {
                              return null;
                            } else {
                              return "Enter Token Number";
                            }
                          },
                          keyboardType: TextInputType.number,
                          controller: tokencontroller,
                          decoration: InputDecoration(
                            // fillColor: Colors.black54,
                            // filled: true,
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            labelText: "Enter Token number",
                            labelStyle: TextStyle(
                              fontFamily: "Poppins",
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 2),
                            constraints:
                                BoxConstraints(maxWidth: 230, maxHeight: 45),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 35,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Check",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 11.h,
                width: 90.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: TextFormField(
                    validator: (value) {
                      bool amountValid = RegExp("[0-9]").hasMatch(value!);
                      if (amountValid) {
                        return null;
                      } else {
                        return "Enter Amount";
                      }
                    },
                    keyboardType: TextInputType.number,
                    controller: amountcontroller,
                    decoration: InputDecoration(
                      // fillColor: Colors.black54,
                      // filled: true,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      labelText: "Enter amount",
                      labelStyle: TextStyle(
                        fontFamily: "Poppins",
                      ),
                      // constraints: BoxConstraints(maxWidth: 300),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkResponse(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Text("done"),
                      ),
                    );
                  }
                },
                child: Center(
                  child: Container(
                    height: 54,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: ColorCodes.Pink,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "BUY",
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
      ),
    );
  }
}
