import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTabPage extends StatelessWidget {
  const FirstTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      children: [
        const SizedBox(height: 10),
        Container(
          width: 405,
          height: 157,
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Department',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 5,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 111,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const Text(
                  'Category',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 10),
        const Text(
          'Shop by Top Features / Functionalities',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 4 / 5.5,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: 188,
              height: 238,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 188,
                    height: 148,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  const Text(
                    'Feature Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const Text(
                    'Feature Description Lorem Ipsum Lorem Ipsum',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  )
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        const Text(
          'Shop by Brands',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 4 / 5,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              width: 195,
              height: 213,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 195,
                      height: 156,
                      decoration: BoxDecoration(
                        color:
                        Colors.black.withOpacity(0.4699999988079071),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        border: Border.all(
                          color: Colors.black
                              .withOpacity(0.5400000214576721),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 156,
                    child: Container(
                      width: 195,
                      height: 57,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.black
                              .withOpacity(0.5400000214576721),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        const Text(
          'Top Sellers Under this Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        )
      ],
    );
  }
}
