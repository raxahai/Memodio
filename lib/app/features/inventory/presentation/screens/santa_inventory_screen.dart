import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:memodio/app/features/inventory/presentation/controllers/santa_inventory_controller.dart';
import 'package:memodio/app/features/inventory/presentation/widgets/add_children_dialog.dart';

class SantaInventoryScreen extends StatelessWidget {
  const SantaInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SantaInventoryController>(
        init: SantaInventoryController(),
        builder: (santaInventoryController) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text("Santa's Inventory"),
            ),
            body: ListView.builder(
              itemCount: santaInventoryController.childrens.length,
              itemBuilder: (context, index) => Container(
                color: Colors.grey.shade200,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                  title: Text(
                      "Name: ${santaInventoryController.childrens[index].name}"),
                  subtitle: Text(
                      "Country: ${santaInventoryController.childrens[index].country}"),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                await Get.dialog(AddChildrenDialog(
                  onAdd: (name, country) =>
                      santaInventoryController.add(name, country),
                ));
              },
              tooltip: 'Add children',
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
