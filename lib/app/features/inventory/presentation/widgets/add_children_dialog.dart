import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddChildrenDialog extends StatelessWidget {
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController countryTextController = TextEditingController();
  final void Function(String, String) onAdd;

  AddChildrenDialog({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TextField(
              controller: nameTextController,
              decoration: const InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller: countryTextController,
              decoration: const InputDecoration(hintText: "Country"),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            TextButton(
              onPressed: () {
                onAdd(nameTextController.text, countryTextController.text);
                Get.back();
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
