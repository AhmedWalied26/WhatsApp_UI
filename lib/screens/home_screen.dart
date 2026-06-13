import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/appbar.dart';
import 'package:whatsapp_ui/widgets/bottom_appbar.dart';
import 'package:whatsapp_ui/widgets/message_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      extendBody: true,
      bottomNavigationBar: BottomAppbar(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background_image.png'),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                MessageItem(
                  hasImage: false,
                  text: 'Hello !',
                  height: 51,
                  width: 79,
                  isSender: true,
                  margin: EdgeInsets.only(top: 33, left: 15),
                  hasPadding: false,
                ),
                MessageItem(
                  hasImage: false,
                  text: 'Hello !',
                  height: 51,
                  width: 79,
                  isSender: false,
                  margin: EdgeInsets.only(top: 33, left: 15),
                  hasPadding: false,
                ),
                MessageItem(
                  hasImage: false,
                  text:
                      'Hey! Have you ever thought\nabout how random moments\ncan sometimes turn into the\nbest memories? It’s like the\nuniverse loves to surprise us\nwhen we least expect it!',
                  height: 150,
                  width: 268,
                  isSender: true,
                  margin: EdgeInsets.only(top: 16, left: 15),
                  hasPadding: false,
                ),
                MessageItem(
                  hasImage: true,
                  imagePath: 'assets/images/Route_image.png',
                  text: 'what a Great Content Tp learn Flutter',
                  height: 252,
                  width: 268,
                  isSender: true,
                  margin: EdgeInsets.only(top: 16, left: 15),
                  hasPadding: true,
                ),

                MessageItem(
                  hasImage: false,
                  text: 'what a Great Content Tp learn Flutter',
                  height: 74,
                  width: 267,
                  isSender: false,
                  margin: EdgeInsets.only(top: 7, right: 16),
                  hasPadding: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
