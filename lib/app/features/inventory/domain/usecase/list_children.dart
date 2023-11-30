import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';

class FetchAllChildrens {
  final SantaInventoryRepository repository;

  const FetchAllChildrens(this.repository);

  List<Children> call() {
    return repository.findAll();
  }
}
