import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/Login/login_screen.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png",width: 250,height: 250,),
            const SizedBox(height: 40),
            UIHelper.CustomText(
                text: "Welcome to WhatsApp",
                fontSize: 20,
                color: const Color(0XFF000000),
                fontWeight: FontWeight.w400
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                    text: 'Read out ',
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                UIHelper.CustomText(
                    text: 'Privacy Policy',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color:const Color(0XFF0C42CC)
                ),
                UIHelper.CustomText(
                    text: '. Tap "Agree and continue"',
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                    text: 'to accept the ',
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                UIHelper.CustomText(
                    text: 'Teams of Service.',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color:const Color(0XFF0C42CC)
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
          callBack: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
          },
          buttonName: "Agree and continue"
      ),
    );
  }
}
