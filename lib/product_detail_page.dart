import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Просмотр товара',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'https://cdn.thewirecutter.com/wp-content/media/2022/07/laptop-under-500-2048px-acer-1.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 30,
                  child: Text(
                    '1/9',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      background: Paint()
                        ..color = Color.fromRGBO(51, 51, 51, 0.5)
                        ..strokeWidth = 20
                        ..strokeJoin = StrokeJoin.round
                        ..strokeCap = StrokeCap.round
                        ..style = PaintingStyle.stroke,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '85 990 с',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                        color: Color.fromRGBO(0, 106, 221, 1),
                      ),
                    ),
                    Text(
                      '≈\$ 988',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(144, 144, 144, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/share_icon.png'),
                    ),
                  ],
                )
              ],
            ),
            Text(
              'Lenovo Legion 5 15IAH7H, Core i7-12700H',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
            ),
            Row(
              children: [
                SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/store_image_placeholder.png')),
                Text(
                  'Apple Store',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(244, 244, 244, 1),
                ),
                // color: Colors.grey,
                child: Column(
                  children: [
                    Text(
                      'Описание',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                    ),
                    Text(
                      'Диагональ: 15,6″ - 39,62 см / Процессор: Intel® Core™ i5 / Операционная система: DOS / Объем оперативной памяти: 16 GB / Тип жесткого диска: SSD / Объем накопителя: 512 GB / Серия видеокарты: NVIDIA GeForce RTX / Чипсет видеоадаптера: 3060 / Объем памяти видеоадаптера: 6 GB',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                    ),
                    Text(
                      'ЦУМ, 3 этаж, 3а',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color.fromRGBO(51, 51, 51, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
