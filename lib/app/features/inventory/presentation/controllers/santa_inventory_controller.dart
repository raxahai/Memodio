import 'package:get/state_manager.dart';
import 'package:memodio/app/core/enums/children_status.dart';
import 'package:memodio/app/features/inventory/domain/entity/children.dart';
import 'package:memodio/app/features/inventory/domain/usecase/add_children.dart';
import 'package:memodio/app/features/inventory/domain/usecase/list_children.dart';
import 'package:memodio/injection_container.dart';

class SantaInventoryController extends GetxController {
  final RxList<Children> childrens = <Children>[].obs;
  final FetchAllChildrens _fetchAllChildrens = locator<FetchAllChildrens>();
  final AddChildren _addChildren = locator<AddChildren>();

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllChildrens();
  }

  void fetchAllChildrens() {
    childrens.value = _fetchAllChildrens();
    update();
  }

  void add(String name, String country) {
    _addChildren(Children(name, country, ChildrenStatus.nice));
    fetchAllChildrens();
  }
}
