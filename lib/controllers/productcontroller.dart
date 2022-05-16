import 'package:centre_source_assignment/model/datamodel.dart';
import 'package:centre_source_assignment/services/remote_services.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  var productList = [Welcome(hits: [], total: 0, totalHits: 0)].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      productList.value = products as List<Welcome>;
    }
  }
}
