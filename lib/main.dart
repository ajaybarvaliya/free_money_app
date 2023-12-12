import 'package:flutter/material.dart';
import 'package:free_money_transfer/Wallet_Cards.dart';
import 'package:free_money_transfer/WelCome.dart';
import 'package:free_money_transfer/Withdraw.dart';
import 'package:sizer/sizer.dart';

import 'Add_New_Card.dart';
import 'Balance_Profile.dart';
import 'Bill_Enquiry.dart';
import 'BottomNavigationBar.dart';
import 'Comon.dart';
import 'Confirm_Internet_Data.dart';
import 'Confirm_Withdraw.dart';
import 'Congratulatins.dart';
import 'Contact_list.dart';
import 'Electric.dart';
import 'Electric_2.dart';
import 'Enter_Code.dart';
import 'Forget_Password.dart';
import 'Internet_Data.dart';
import 'Login.dart';
import 'Notifcation.dart';
import 'Payment_Details.dart';
import 'Profile_General.dart';
import 'Registration_1.dart';
import 'Registration_2.dart';
import 'Reset_Password.dart';
import 'Scan_Your_Card.dart';
import 'Statistic.dart';
import 'TabBar.dart';
import 'Top_Up.dart';
import 'Transfer.dart';
import 'Transffered_Succesfully.dart';
import 'Wallet_Aaccount.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Registration_1(),
        );
      },
    );
  }
}
