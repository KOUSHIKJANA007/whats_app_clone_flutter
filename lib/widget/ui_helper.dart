import 'package:flutter/material.dart';

class UIHelper{
  static CustomButton({required VoidCallback callBack,required String buttonName}){
    return SizedBox(
      height: 35,
      width: 370,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            )
          ),
          onPressed: callBack,
          child: Text(
            buttonName,
            style: const TextStyle(fontSize: 14,color: Colors.white),
          ),
      )

    );
  }
  static CustomText({required String text,required double fontSize,Color? color,FontWeight? fontWeight}){
    return Text(text,style: TextStyle(fontSize: fontSize,fontWeight: fontWeight,color: color ?? const Color(0XFF5E5E5E)),);
  }
  static CustomContainer(TextEditingController controller){
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XFFD9D9D9)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: InputBorder.none
          ),
        ),
      ),
    );
  }
}