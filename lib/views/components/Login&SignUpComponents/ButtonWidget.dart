import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  final String? title;
  const buttonWidget({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(100, 61, 162, 150),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const[
           BoxShadow(
            color: Color.fromARGB(255, 61, 162, 150),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title!,
          style: const TextStyle(fontSize: 20,decoration: TextDecoration.none,color: Colors.white),
        ),
      ),
    );
  }
}
