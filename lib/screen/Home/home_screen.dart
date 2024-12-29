import 'package:flutter/material.dart';
import 'package:whats_app_clone/screen/Home/Call/call_screen.dart';
import 'package:whats_app_clone/screen/Home/Camera/camera_screen.dart';
import 'package:whats_app_clone/screen/Home/Chat/chat_screen.dart';
import 'package:whats_app_clone/screen/Home/Status/status_screen.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: UIHelper.CustomText(text: "WhatsApp", fontSize: 20,color: Colors.white),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],indicatorColor: Colors.white,),
        ),
        body: TabBarView(children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ]),
      ),
    );
  }
}
