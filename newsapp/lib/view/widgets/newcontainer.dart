import 'dart:ffi';

import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newHead;
  String newsUrl;
  String newDes;
  NewsContainer(
      {super.key,
      required this.imgUrl,
      required this.newDes,
      required this.newHead,
      required this.newsUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.network(
          height:400
          ,
          imgUrl,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(newHead, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                  Text(newDes,style: TextStyle(fontSize: 16,),),
              ]),
            ),
          ),

       
        SizedBox(height: 10,),
        Spacer(),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              
                onPressed: () {
                  print("Going to $newsUrl");
                },
                child: Text("Read More")),
          ),
        ),
            SizedBox(height: 10,)
      ]),
    );
  }
}
