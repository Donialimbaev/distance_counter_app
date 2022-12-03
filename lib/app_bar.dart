import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
              width: 330,
              child: OutlineSearchBar(
                backgroundColor: Color.fromRGBO(239, 239, 239, 1),
                borderColor: Color.fromRGBO(239, 239, 239, 1),
                borderRadius: BorderRadius.circular(4.0),
                icon: Icon(Icons.search),
                hideSearchButton: true,
                hintText: 'Найти',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(239, 239, 239, 1),
              height: 40,
              width: 40,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/filter_icon.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
