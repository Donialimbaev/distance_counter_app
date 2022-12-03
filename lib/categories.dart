import 'package:flutter/material.dart';

class Catergories extends StatelessWidget {
  const Catergories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 8,
          ),
          Container(
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Text(
                'Электроника',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Text(
                'Дом и сад',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Text(
                'Одежда',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), border: Border.all()),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Text(
                'Спорт и хобби',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
