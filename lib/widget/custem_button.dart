import 'package:flutter/material.dart';

class custem_Bottom extends StatelessWidget {
  const custem_Bottom({super.key, required this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.blue),
        child: Center(
            child: isloading
                ? CircularProgressIndicator(
                    color: Colors.black,
                  )
                : Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
      ),
    );
  }
}
