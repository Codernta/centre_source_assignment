import 'package:flutter/material.dart';

class ActionIcon extends StatelessWidget {
  final IconData;

  ActionIcon({required this.IconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        IconData,
        color: Colors.purple[700],
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple[400],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80'),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            bottom: 10,
            child: Icon(
              Icons.favorite_outline_outlined,
              color: Colors.purple,
            ),
          ),
          const Positioned(
            right: 10,
            bottom: 10,
            child: Icon(Icons.download_outlined, color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
