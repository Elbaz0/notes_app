import 'package:flutter/material.dart';

class search_icon_widget extends StatelessWidget {
  search_icon_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      child: const Center(
        child: Icon(
          Icons.search,
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
