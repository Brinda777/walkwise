import 'package:flutter/material.dart';
import 'package:walkwise/core/constants/color_constants.dart';
import 'package:walkwise/core/utils/util.dart';
import 'package:walkwise/widgets/responsive_text.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBackground),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(kBackground),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveText(
                  "FORGET PASSWORD",
                  fontFamily: 'Times',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                ResponsiveText(
                  'ForgetPassword',
                  fontSize: 12,
                  textColor: const Color.fromARGB(255, 116, 116, 116),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email/Phone.no",
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: kHorizontalMargin, vertical: kVerticalMargin),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 2, height * 0.07),
                  backgroundColor: Color(0xff8219B3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              onPressed: () {
                // Add your onPressed functionality here
              },
              child: ResponsiveText(
                "SUBMIT",
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: 'Times',
                textColor: Color(0xffFCFCFC),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
