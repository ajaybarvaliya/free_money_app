import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Comon.dart';
import 'Wallet_Cards.dart';

class Add_New_Card extends StatefulWidget {
  const Add_New_Card({Key? key}) : super(key: key);

  @override
  State<Add_New_Card> createState() => _Add_New_CardState();
}

class _Add_New_CardState extends State<Add_New_Card> {
  TextEditingController cardcontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  TextEditingController cvccontroller = TextEditingController();
  TextEditingController holdercontroller = TextEditingController();
  TextEditingController adresscontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Wallet_Cards(),
                            ),
                          );
                        },
                        child: Image.asset(ImageConstants.back,
                            height: 9.h, width: 9.w),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 70),
                      child: Text(
                        "Add new cards",
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
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Color(0xffD8E0F0),
                        radius: 60,
                        child: Image.asset(
                          "asset/image/Group 296.png",
                          scale: 4.5,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 90,
                      top: -17,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffFB847C),
                        radius: 15,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    bool cardValid = RegExp("[0-9]").hasMatch(value!);
                    if (cardValid) {
                      return null;
                    } else {
                      return "enter card number";
                    }
                  },
                  controller: cardcontroller,
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
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      TextFormField(
                        validator: (value) {
                          bool dateValid = RegExp("[0-9]").hasMatch(value!);
                          if (dateValid) {
                            return null;
                          } else {
                            return "Enter Date";
                          }
                        },
                        controller: datecontroller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Expire Date",
                          labelStyle: TextStyle(
                              fontFamily: "Poppins", color: Colors.black),
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
                        validator: (value) {
                          bool cvcValid = RegExp("[0-9]").hasMatch(value!);
                          if (cvcValid) {
                            return null;
                          } else {
                            return "Enter CVC/CVV";
                          }
                        },
                        controller: cvccontroller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "CVC/CVV",
                          labelStyle: TextStyle(
                              fontFamily: "Poppins", color: Colors.black),
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
                  validator: (value) {
                    bool cardValid = RegExp("[a-z]").hasMatch(value!);
                    if (cardValid) {
                      return null;
                    } else {
                      return "Enter Cardholder name";
                    }
                  },
                  controller: holdercontroller,
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
                  validator: (value) {
                    bool adressValid = RegExp("[a-z]").hasMatch(value!);
                    if (adressValid) {
                      return null;
                    } else {
                      return "Enter adress";
                    }
                  },
                  controller: adresscontroller,
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
                SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffFB847C),
                      radius: 13,
                      child:
                          Center(child: Icon(Icons.check, color: Colors.white)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Save card",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins",
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkResponse(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Wallet_Cards(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 54,
                      width: 70.w,
                      decoration: BoxDecoration(
                        color: ColorCodes.Pink,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          "ADD CARD",
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
      ),
    );
  }
}
