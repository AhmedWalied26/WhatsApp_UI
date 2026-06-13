import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageItem extends StatelessWidget {
  String text;
  double height;
  double width;
  bool isSender;
  bool hasImage;
  String? imagePath;
  bool hasPadding;

  EdgeInsetsGeometry margin;

  MessageItem({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.isSender,
    required this.margin,
    required this.hasImage,
    required this.hasPadding,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          color: isSender ? Color(0xff168C4B) : Color(0xff232D36),
        ),
        child: Padding(
          padding: hasPadding
              ? const EdgeInsets.only(left: 16)
              : const EdgeInsets.only(left: 0),
          child: hasImage
              ? Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Inter_18pt',
                        ),
                      ),
                    ),
                    Image.asset('$imagePath'),
                  ],
                )
              : Center(
                  child: Text(
                    text,
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
    );
  }
}
