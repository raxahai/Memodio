import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';

class SantaInventoryRepositoryImpl implements SantaInventoryRepository {
  List<Children> childrens = [];

  @override
  Children add(Children children) {
    childrens.add(children);
    return children;
  }

  @override
  List<Children> findAll() {
    return childrens;
  }
}
