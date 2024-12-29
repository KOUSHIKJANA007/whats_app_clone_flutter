import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whats_app_clone/screen/Home/home_screen.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? pickedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            UIHelper.CustomText(
                text: 'Profile info',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF00A884)
            ),
            const SizedBox(height: 30),
            UIHelper.CustomText(
              text: "Please provide your name and an optional",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 5),
            UIHelper.CustomText(
              text: "profile photo",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap:(){
                _openBottom(context);
              },
              child: pickedImage==null ? CircleAvatar(
                radius: 80,
                backgroundColor: const Color(0XFFD9D9D9),
                child: Image.asset("assets/images/photo-camera 1.png",height: 60,fit: BoxFit.cover,),
              )
              :
              CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedImage!),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextField(
                decoration: InputDecoration(
                  hintText:"Type your name here",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  )
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: UIHelper.CustomButton(
          callBack: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          buttonName: "Next"
      ),
    );
  }

  _openBottom(BuildContext context){
    return showModalBottomSheet(context: context, builder: (BuildContext contex){
      return Container(
        height: 200,
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){_pickImage(ImageSource.camera);}, icon: Icon(Icons.camera_alt,size: 80,color: Colors.grey,)),
            IconButton(onPressed: (){_pickImage(ImageSource.gallery);}, icon: Icon(Icons.photo_album,size: 80,color: Colors.grey)),
          ],
        ),
      );
    });
  }

  _pickImage(ImageSource imageSource)async{
    try{
      final photo =await ImagePicker().pickImage(source: imageSource);
      print("This is photo");
      print(photo?.path);
      if(photo==null)return;
      final tempImage=File(photo.path);
      setState(() {
        pickedImage=tempImage;
      });
    }catch(ex){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(ex.toString()),
        backgroundColor: Colors.red,)
      );
    }
  }
}
