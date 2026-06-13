import 'package:flutter/material.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 68,
          actions: [
            Image.asset('assets/images/Phone_icon.png', height: 25, width: 45),
            Image.asset('assets/images/Video_icon.png', height: 25, width: 45),
            Image.asset(
              'assets/images/More-vertical_icon.png',
              height: 25,
              width: 45,
            ),
          ],
          titleSpacing: 0,
          leading: Padding(
            padding: const EdgeInsets.all(23),
            child: Image.asset('assets/images/Vector_icon.png'),
          ),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              SizedBox(width: 8),
              Text(
                'Ahmed Walied',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter_18pt',
                ),
              ),
            ],
          ),
          backgroundColor: Color(0xff168C4B),
        ),
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Type a Message ...',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter_18pt',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff168C4B)),
                      borderRadius: BorderRadius.circular(39),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff168C4B)),
                      borderRadius: BorderRadius.circular(39),
                    ),
                    fillColor: Colors.transparent,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                        top: 12,
                        bottom: 12,
                        right: 8,
                      ),
                      child: Image.asset('assets/images/Camera_icon.png'),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        right: 18,
                        top: 12,
                        bottom: 12,
                      ),
                      child: Image.asset('assets/images/Send_icon.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 26,
                backgroundColor: Color(0xff168C4B),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset('assets/images/Mic_icon.png'),
                ),
              ),
            ],
          ),
        ),

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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 33, left: 15),
                      height: 51,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        color: Color(0xff168C4B),
                      ),
                      child: Center(
                        child: Text(
                          'Hello !',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: 'Inter_18pt',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 16, right: 16),
                      height: 51,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        color: Color(0xff232D36),
                      ),
                      child: Center(
                        child: Text(
                          'Hello !',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: 'Inter_18pt',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.only(right: 18),
                      margin: EdgeInsets.only(top: 16, left: 15),
                      height: 150,
                      width: 268,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        color: Color(0xff168C4B),
                      ),
                      child: Center(
                        child: Text(
                          'Hey! Have you ever thought\nabout how random moments\ncan sometimes turn into the\nbest memories? It’s like the\nuniverse loves to surprise us\nwhen we least expect it!',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: 'Inter_18pt',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 16, left: 15),
                      height: 252,
                      width: 268,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        color: Color(0xff168C4B),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7),
                              child: Text(
                                'what a Great Content Tp learn Flutter',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontFamily: 'Inter_18pt',
                                ),
                              ),
                            ),
                            Image.asset('assets/images/Route_image.png'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 7, right: 16),
                      height: 74,
                      width: 267,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                        color: Color(0xff232D36),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            'what a Great Content Tp learn Flutter',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontFamily: 'Inter_18pt',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
