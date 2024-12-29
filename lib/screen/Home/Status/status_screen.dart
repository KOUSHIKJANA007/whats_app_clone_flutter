import 'package:flutter/material.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.only(left: 20),
          child:UIHelper.CustomText(text: "Status", fontSize: 25,fontWeight: FontWeight.w500)
          ),
          Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(""),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
