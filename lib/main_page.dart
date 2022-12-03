import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

import 'categories.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          Catergories(),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 500,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (index, context) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                    width: 172,
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4),
                          ),
                          child: Image.network(
                            'https://cdn.thewirecutter.com/wp-content/media/2022/07/laptop-under-500-2048px-acer-1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2),
                          child: Text(
                            'Lenovo Legion 5 15IAH7H, Core',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Text(
                            '85 990 с',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Container(
          //   width: 172,
          //   height: 212,
          // decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(8),
          //     border: Border.all(color: Colors.grey)),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         width: 172,
          //         height: 120,
          //         // color: Colors.red,
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(4),
          //             topRight: Radius.circular(4),
          //           ),
          //           child: Image.network(
          //             'https://cdn.thewirecutter.com/wp-content/media/2022/07/laptop-under-500-2048px-acer-1.jpg',
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          //         child: Text(
          //           'Lenovo Legion 5 15IAH7H, Core',
          //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          //         ),
          //       ),
          //       Padding(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          //         child: Text(
          //           '85 990 с',
          //           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
