import 'package:centre_source_assignment/model/datamodel.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Welcome product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(''),
                ),
                const Positioned(
                  left: 30,
                  bottom: 30,
                  child: Icon(Icons.favorite, color: Colors.purple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
