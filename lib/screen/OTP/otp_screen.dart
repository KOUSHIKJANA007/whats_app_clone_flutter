import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/Profile/profile_screen.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class OTPScreen extends StatefulWidget {
  String phoneNumber;

  OTPScreen({super.key, required this.phoneNumber});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var otp1Con=TextEditingController();
  var otp2Con=TextEditingController();
  var otp3Con=TextEditingController();
  var otp4Con=TextEditingController();
  var otp5Con=TextEditingController();
  var otp6Con=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            UIHelper.CustomText(
                text: 'Verify your number',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF00A884)
            ),
            const SizedBox(height: 30),
            UIHelper.CustomText(
                text: "You’ve tried to register ${widget.phoneNumber}",
                fontSize: 16,
                fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 5),
            UIHelper.CustomText(
                text: "recently. Wait before requesting an sms or a call.",
                fontSize: 16,
                fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomText(
                  text: " with your code. ",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: UIHelper.CustomText(
                      text: "Wrong number?",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF00A884)
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UIHelper.CustomContainer(otp1Con),
                const SizedBox(width: 10,),
                UIHelper.CustomContainer(otp2Con),
                const SizedBox(width: 10,),
                UIHelper.CustomContainer(otp3Con),
                const SizedBox(width: 10,),
                UIHelper.CustomContainer(otp4Con),
                const SizedBox(width: 10,),
                UIHelper.CustomContainer(otp5Con),
                const SizedBox(width: 10,),
                UIHelper.CustomContainer(otp6Con)
              ],
            ),
            const SizedBox(height: 40),
            UIHelper.CustomText(
                text: "Didn’t receive code?",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF00A884)
            ),
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
          callBack: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
          },
          buttonName: "Next"
      ),
    );
  }
}
