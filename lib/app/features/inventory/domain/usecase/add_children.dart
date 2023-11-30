import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';

class AddChildren {
  final SantaInventoryRepository repository;

  const AddChildren(this.repository);

  Children call(Children children) {
    return repository.add(children);
  }
}
