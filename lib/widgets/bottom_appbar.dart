import 'package:flutter/material.dart';

class BottomAppbar extends StatelessWidget {
  const BottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
