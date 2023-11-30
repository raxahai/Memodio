import 'package:flutter_test/flutter_test.dart';
import 'package:memodio/app/core/enums/children_status.dart';
import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';
import 'package:memodio/app/features/inventory/domain/usecase/list_children.dart';
import 'package:mocktail/mocktail.dart';

class MockSantaInventoryRepository extends Mock
    implements SantaInventoryRepository {}

void main() {
  late SantaInventoryRepository repository;
  late FetchAllChildrens usecase;
  final List<Children> childrens = [
    Children("raza", "pakistan", ChildrenStatus.nice),
    Children("syed", "pakistan", ChildrenStatus.nice),
  ];

  setUp(() {
    repository = MockSantaInventoryRepository();
    usecase = FetchAllChildrens(repository);
  });

  test("should fetch all childrens usecase", () {
    // arrange
    when(() => repository.findAll()).thenReturn(childrens);

    // act
    List<Children> actualResult = usecase();

    // assert
    expect(actualResult.length, 2);
  });
}
