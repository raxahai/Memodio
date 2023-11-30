import 'package:memodio/app/features/inventory/domain/entity/children.dart';

abstract class SantaInventoryRepository {
  List<Children> findAll();
  Children add(Children children);
}
