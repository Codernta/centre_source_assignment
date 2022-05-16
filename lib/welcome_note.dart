import 'package:flutter/material.dart';

class WelcomeNote extends StatelessWidget {
  final myController = TextEditingController();
  WelcomeNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 30),
          height: 100,
          child: const Text(
            'Hi \nWelcome',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'ZenLoop',
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextFormField(
            controller: myController,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple),
              ),
              contentPadding: const EdgeInsets.only(left: 15, right: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(color: Colors.purple),
              ),
              labelText: 'Search For Pictures ',
              labelStyle: const TextStyle(
                  fontFamily: 'ZenLoop', fontSize: 20, color: Colors.purple),
              suffixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search, color: Colors.purple)),
              hintText: 'Enter Your Search Term',
              hintStyle:
                  const TextStyle(fontFamily: 'ZenLoop', color: Colors.purple),
            ),
          ),
        ),
      ],
    );
  }
}
