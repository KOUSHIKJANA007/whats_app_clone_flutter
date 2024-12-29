import 'package:flutter/material.dart';
import 'package:whats_app_clone/widget/ui_helper.dart';

class ChatScreen extends StatelessWidget {
  List<Map<String,String>> userData=[
    {
      "image":"https://plus.unsplash.com/premium_photo-1668116307088-583ee0d4aaf7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZHB8ZW58MHx8MHx8fDA%3D",
      "name":"Koushik",
      "msg":"Hello",
      "unread":"24",
      "time":"05:45 am"
    },
    {
      "image":"https://images.unsplash.com/photo-1515515113139-f2840a3ddd77?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZHB8ZW58MHx8MHx8fDA%3D",
      "name":"Koushik",
      "msg":"Hello",
      "unread":"4",
      "time":"09:40 am"
    },
    {
      "image":"https://images.unsplash.com/photo-1650110002977-3ee8cc5eac91?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGRwfGVufDB8fDB8fHww",
      "name":"Dev",
      "msg":"Hello",
      "unread":"10",
      "time":"07:45 pm"
    },
    {
      "image":"https://images.unsplash.com/photo-1654175978830-b47101efd402?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGRwfGVufDB8fDB8fHww",
      "name":"Raghav",
      "msg":"This is for you",
      "unread":"1",
      "time":"08:45 am"
    },
    {
      "image":"https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8",
      "name":"Raj",
      "msg":"How are you?",
      "unread":"0",
      "time":"05:00 pm"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: userData.length,
                itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 53,
                  backgroundImage: NetworkImage(userData[index]['image']!),
                  ),
                title: UIHelper.CustomText(
                    text: userData[index]['name'].toString(),
                    fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),
                subtitle: UIHelper.CustomText(
                    text: userData[index]['msg'].toString(),
                    fontSize: 14,
                  color: const Color(0XFF889095),
                ),
                trailing: Column(
                  children: [
                    const SizedBox(height: 10),
                    UIHelper.CustomText(
                      text: userData[index]['time'].toString(),
                      fontSize: 14,
                      color: const Color(0XFF026500),
                        fontWeight: FontWeight.w700
                    ),
                    const SizedBox(height: 5),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: const Color(0XFF036A01),
                      child: UIHelper.CustomText(
                          text: userData[index]['unread'].toString(),
                          fontSize: 12,
                          color: const Color(0XFFFFFFFF),
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
      floatingActionButton: const CircleAvatar(
        radius: 30,
        backgroundColor: Color(0XFF008665),
        child: Icon(Icons.chat,color: Colors.white,),
      ),
    );
  }
}
