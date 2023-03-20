import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "Comment Sent Sucessfully",
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
