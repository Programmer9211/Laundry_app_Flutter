import 'package:flutter/material.dart';
import 'package:laundery_app/Routes/route.dart';
import 'package:laundery_app/Screens/otp_verification_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height / 16,
              ),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "Login Account",
                  style: TextStyle(
                    fontSize: size.width / 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 140,
              ),
              Container(
                width: size.width / 1.1,
                child: Text(
                  "Hello, Welcome back to out account",
                  style: TextStyle(
                    fontSize: size.width / 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 12,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: size.width / 1.1,
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: size.width / 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height / 16,
                width: size.width / 1.1,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: "Phone Number",
                    suffixIcon: Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    prefixIcon: Icon(Icons.countertops),
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 20,
              ),
              requestOtp(size, context),
              SizedBox(
                height: size.height / 12,
              ),
              orSignInWithGoogle(size),
              SizedBox(
                height: size.height / 18,
              ),
              googleButton(size),
              SizedBox(
                height: size.height / 18,
              ),
              Container(
                width: size.width / 1.1,
                child: RichText(
                  text: TextSpan(
                    text: "Not Registered Yet? ",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: size.width / 24,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "Create an account.",
                        style: TextStyle(
                          color: Color.fromRGBO(192, 88, 63, 1),
                          fontSize: size.width / 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget googleButton(Size size) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(135, 165, 167, 1),
      ),
      alignment: Alignment.center,
      child: Text(
        "Google",
        style: TextStyle(
          fontSize: size.width / 22,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget orSignInWithGoogle(Size size) {
    return Container(
      height: size.height / 20,
      width: size.width / 1.1,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: size.height / 700,
              color: Colors.grey[500],
            ),
          ),
          Text(
            "   or Sign in with Google   ",
            style: TextStyle(fontSize: size.width / 32),
          ),
          Expanded(
            child: Container(
              height: size.height / 700,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }

  Widget requestOtp(Size size, BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        RouteToPage(
          OTPVerification(),
        ),
      ),
      child: Container(
        height: size.height / 15,
        width: size.width / 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(192, 88, 63, 1),
          //
        ),
        alignment: Alignment.center,
        child: Text(
          "Request OTP",
          style: TextStyle(
            color: Colors.white,
            fontSize: size.width / 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
