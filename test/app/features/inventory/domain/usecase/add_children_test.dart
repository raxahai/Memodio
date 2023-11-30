import 'package:flutter_test/flutter_test.dart';
import 'package:memodio/app/core/enums/children_status.dart';
import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';
import 'package:memodio/app/features/inventory/domain/usecase/add_children.dart';
import 'package:mocktail/mocktail.dart';

class MockSantaInventoryRepository extends Mock
    implements SantaInventoryRepository {}

void main() {
  late SantaInventoryRepository repository;
  late AddChildren usecase;
  final Children children = Children("raza", "pakistan", ChildrenStatus.nice);

  setUp(() {
    repository = MockSantaInventoryRepository();
    usecase = AddChildren(repository);
  });

  test("should add children usecase", () {
    // arrange
    when(() => repository.add(children)).thenReturn(children);

    // act
    Children actualResult = usecase(children);

    // assert
    expect(actualResult.name, children.name);
  });
}
