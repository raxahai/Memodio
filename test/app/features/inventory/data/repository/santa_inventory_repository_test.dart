import 'package:flutter_test/flutter_test.dart';
import 'package:memodio/app/core/enums/children_status.dart';
import 'package:memodio/app/features/inventory/data/repository/santa_inventory_repository_impl.dart';
import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';

void main() {
  late SantaInventoryRepository repository;
  final Children children = Children("Raza", "Pakistan", ChildrenStatus.nice);

  setUp(() {
    repository = SantaInventoryRepositoryImpl();
  });

  test("should add a children on success return children", () {
    // act
    Children savedChildren = repository.add(children);

    // assert
    expect(savedChildren.name, children.name);
    expect(savedChildren.country, children.country);
    expect(savedChildren.status, children.status);
  });

  test("should list all childrens", () {
    // arrange
    repository.add(Children("Raza", "Pakistan", ChildrenStatus.nice));
    repository.add(Children("Haider", "Pakistan", ChildrenStatus.naughty));

    // act
    List<Children> childrens = repository.findAll();

    // assert
    expect(childrens.length, 2);
  });
}
