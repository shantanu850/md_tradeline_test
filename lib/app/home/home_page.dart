import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iteriro/app/home/pages/add_new.dart';
import 'package:iteriro/app/home/pages/first.dart';
import 'package:iteriro/app/home/pages/home.dart';
import 'package:iteriro/app/home/pages/profile.dart';
import 'package:iteriro/app/home/pages/store.dart';
import 'package:iteriro/generated/assets.dart';
import 'package:tuple/tuple.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final PageController controller = PageController();
  List<Tuple5<String, String, String, int, int>> bottomBarItems = [
    const Tuple5("Home", Assets.uiIconsMdPng, Assets.uiIconsMdPng, 0, 0),
    const Tuple5("Feed", Assets.uiIconsAddNewPng, Assets.uiIconsFirstPng, 1, 0),
    const Tuple5(
        "Chat", Assets.uiIconsAddNewPng, Assets.uiIconsAddNewPng, 2, 0),
    const Tuple5("Chat", Assets.uiIconsShopPng, Assets.uiIconsShopPng, 3, 0),
    const Tuple5("Me", 'assets/ui_icons/profile_png.png',
        'assets/ui_icons/profile_png.png', 4, 0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 190,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(width: 10),
            SvgPicture.asset(Assets.uiIconsMd),
            const SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                '#byfamforfam',
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6000000238418579),
                  fontSize: 14,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
      body: PageView(
        controller: controller,
        children: const [
          HomeTabPage(),
          FirstTabPage(),
          AddNewTabPage(),
          StoreFrontTabPage(),
          ProfileTabPage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 22,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (final item in bottomBarItems)
              InkWell(
                onTap: () {
                  controller.jumpToPage(item.item4);
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Stack(
                    children: [
                      if (item.item5 > 0)
                        Align(
                          alignment: Alignment.topRight,
                          child: Badge(
                            label: Text(item.item5.toString()),
                          ),
                        ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Center(
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 700),
                                transitionBuilder: (child, anim) {
                                  return FadeTransition(
                                    opacity: anim,
                                    child: child,
                                  );
                                },
                                child: Image.asset(
                                  item.item4 == currentPage
                                      ? item.item2
                                      : item.item3,
                                  height: 25,
                                  //width: 25,
                                  color: item.item4 == currentPage
                                      ? Colors.amber
                                      : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            // Text(
                            //   item.item1,
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //     fontSize: 10,
                            //     color: item.item4 == currentPage
                            //         ? Colors.amber
                            //         : Colors.black,
                            //   ),
                            // ),
                          ],
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
