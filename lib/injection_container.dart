import 'package:get_it/get_it.dart';
import 'package:memodio/app/features/inventory/data/repository/santa_inventory_repository_impl.dart';
import 'package:memodio/app/features/inventory/domain/repository/santa_inventory_repository.dart';
import 'package:memodio/app/features/inventory/domain/usecase/add_children.dart';
import 'package:memodio/app/features/inventory/domain/usecase/list_children.dart';

GetIt locator = GetIt.instance;

void init() async {
  /// **************** inventory ******************
  locator.registerLazySingleton<SantaInventoryRepository>(
      () => SantaInventoryRepositoryImpl());
  locator.registerLazySingleton(() => FetchAllChildrens(locator()));
  locator.registerLazySingleton(() => AddChildren(locator()));
  // *************************************************
}
