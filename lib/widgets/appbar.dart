import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(68);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
