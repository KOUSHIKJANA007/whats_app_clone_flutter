import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/OTP/otp_screen.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedCountry = "India";
  var phoneCon = TextEditingController();
  var codeCon = TextEditingController();
  List<String> countries = ["India", "America", "Brazil", "Africa", "Japan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: UIHelper.CustomText(
              text: 'Enter your phone number',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: const Color(0XFF00A884))),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            UIHelper.CustomText(
              text: 'WhatsApp will need to verify your phone',
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 5),
            UIHelper.CustomText(
              text: 'number. Carrier charges may apply.',
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 5),
            UIHelper.CustomText(
                text: 'What’s my number?',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0XFF00A884)),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country.toString()),
                  );
                }).toList(),
                value: selectedCountry,
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: TextField(
                      controller: codeCon,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: "+91",
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0XFF00A884)))),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      controller: phoneCon,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFF00A884))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0XFF00A884)))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
          callBack: () {
            login(phoneCon.text.toString());
          },
          buttonName: "Next"),
    );
  }

  login(String phoneNumber) {
    if (phoneNumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: UIHelper.CustomText(
          text: "Enter phone number",
          fontSize: 16,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ));
    }else{
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => OTPScreen(phoneNumber: codeCon.text.toString()+phoneCon.text.toString(),)));
    }
  }
}
