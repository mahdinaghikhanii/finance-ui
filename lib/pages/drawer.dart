// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:finance/theme/colors.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: const EdgeInsets.only(left: 25, right: 10),
          children: [
            SizedBox(
              height: resHeight * 0.075,
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: ksecondarycolor,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 60,
                child: Image.asset(
                  'assets/images/user.png',
                ),
              ),
            ),
            SizedBox(
              height: resHeight * 0.0175,
            ),
            Text(
              "Ghulam",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "UX UI Designer",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: resHeight * 0.04,
            ),
            const DrawerItems(
              text: "Corporate APP",
              image: 'assets/images/corporation.png',
            ),
            const DrawerItems(
              text: "Security Settings",
              image: 'assets/images/policeman.png',
            ),
            const DrawerItems(
              text: "Online Shopping",
              image: 'assets/images/shopping-cart.png',
            ),
            const DrawerItems(
              text: "Groceris",
              image: 'assets/images/food.png',
            ),
            const DrawerItems(
              text: "Utilities",
              image: 'assets/images/tools.png',
            ),
            const DrawerItems(
              text: "Thumb Scanner",
              image: 'assets/images/scanner.png',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final text;
  final image;
  const DrawerItems({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        image,
        color: Colors.white,
        width: 30,
        height: 30,
      ),
      onTap: () {
        Navigator.pop(context);
      },
      title: Text(text, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
