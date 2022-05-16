import 'package:centre_source_assignment/bottomnavigation.dart';
import 'package:centre_source_assignment/controllers/productcontroller.dart';
import 'package:centre_source_assignment/resources.dart';
import 'package:centre_source_assignment/views/product_tile.dart';
import 'package:centre_source_assignment/welcome_note.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ProductController productionController = Get.put(ProductController());

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pixabay',
            style: TextStyle(
                color: Colors.purple,
                fontFamily: 'ZenLoop',
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        centerTitle: true,
        leading: const Icon(Icons.menu, color: Colors.purple),
        elevation: 0,
        backgroundColor: Colors.white12,
        actions: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionIcon(
                  IconData: Icons.account_circle_rounded,
                ),
                const SizedBox(width: 20),
                ActionIcon(IconData: Icons.info),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          WelcomeNote(),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Obx(
                () => StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    itemCount: productionController.productList.length,
                    itemBuilder: (context, index) {
                      return ProductTile(
                          productionController.productList[index]);
                    },
                    staggeredTileBuilder: (index) =>
                        const StaggeredTile.fit(1)),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
