import 'package:flutter/material.dart';

class search_icon_widget extends StatelessWidget {
  const search_icon_widget(
      {super.key, required this.icon, required this.onpressed});
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 35,
          ),
          onPressed: onpressed,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white.withOpacity(0.1),
      ),
    );
  }
}
