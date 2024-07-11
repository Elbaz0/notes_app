import 'package:flutter/material.dart';

class search_icon_widget extends StatelessWidget {
  const search_icon_widget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      child: Center(
        child: Icon(
          icon,
          size: 35,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white.withOpacity(0.1),
      ),
    );
  }
}
