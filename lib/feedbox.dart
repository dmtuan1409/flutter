import 'package:flutter/material.dart';
import 'actionbtn.dart';

//the feed box will have for parameters :
// the user name , the user avatar, the pub date, the content text and content img
Widget feedBox(String avatarUrl, String userName, String date,
    String contentText, String contentImg) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:8),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(avatarUrl),
                radius: 25.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        if (contentText != "")
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              contentText,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
        SizedBox(
          height: 10.0,
        ),
        if (contentImg != "") Image.network(contentImg),
        SizedBox(
          height: 5.0,
        ),

        Row(
          children: [
            FlatButton.icon(
              icon:Icon(Icons.favorite_border,size: 30),
              label: Text("1"),
              padding: EdgeInsets.only(left: 2),
            ),
            FlatButton.icon(
              icon:Icon(Icons.comment_outlined,size: 30),
              label: Text("1"),
              padding: EdgeInsets.only(left: 12),
            ),
            // SizedBox(
            //   width: 140.0,
            // ),
            FlatButton.icon(
              icon:Icon(Icons.keyboard_control,size: 30),
              label: Text(" "),
              padding: EdgeInsets.only(left: 190),
            ),
          ],
        )
      ],
    ),
  );

}
