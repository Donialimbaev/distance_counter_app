import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<dynamic> aaaaaaaaa = [];

  Future<List> getCategory(int id) async {
    final response = await http.get(
      Uri.parse('http://13.53.183.236:8080/categories/listByParent/$id'),
    );
    final List<dynamic> categoryList =
        jsonDecode(utf8.decode(response.bodyBytes));
    aaaaaaaaa = categoryList;

    // print(aaaaaaaaa);
    return aaaaaaaaa;
  }

  @override
  Widget build(BuildContext context) {
    final Future<List<dynamic>> cat = getCategory(0);

    print('bbbbbbbbbbbbb');
    print(aaaaaaaaa);
    print('cccccccccccccccc');
    return Container(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 8,
          ),
          ...aaaaaaaaa.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Container(
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all()),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  child: Text(
                    item['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
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
