import "package:flutter/material.dart";
import "package:to_do/util/my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback OnSave;
  VoidCallback OnCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.OnSave,
      required this.OnCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Add a new Task",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButton(text: "Save", onPressed: OnSave),
                    const SizedBox(width: 8),
                    MyButton(text: "Cancel", onPressed: OnCancel),
                  ],
                )
              ],
            )));
  }
}
