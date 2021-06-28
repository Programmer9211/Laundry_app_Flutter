import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OtpScreen.withGradientBackground(
      topColor: Color(0xFFcc2b5e),
      bottomColor: Color(0xFF753a88),
      otpLength: 4,
      themeColor: Colors.white,
      titleColor: Colors.white,
      title: "Verification Code",
      subTitle: "Enter the code sent to \n +911236547852",
      icon: Icon(
        Icons.verified,
        color: Colors.white,
      ),
      validateOtp: (String) async {
        return "";
      },
      routeCallback: (BuildContext) {},
    );
  }
}
