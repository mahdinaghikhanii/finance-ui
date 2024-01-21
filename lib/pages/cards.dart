import 'package:flutter/material.dart';

import '../common/widgets/transactioncard.dart';
import '../theme/colors.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    final resHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [
          Icon(
            Icons.more_vert,
            size: 25,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: resHeight * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Cards",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "You have 3 active cards",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                color: const Color(0xffffd674),
                textColor: Colors.black,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(8.0),
                minWidth: 0,
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          Container(
            decoration: const BoxDecoration(
                color: kprimarycolor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/chip.png',
                    width: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "4562 1122 4595 7852",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "Ghulam",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expiray Date",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            "24/2021",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/mastercard.png',
                        width: 50,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          Text(
            "Recent Transactions",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: resHeight * 0.025,
          ),
          const TransactionWidget(
              ammount: "+\$2,010",
              date: "June 14",
              image: 'assets/images/burger.png',
              title: "KFC"),
          SizedBox(
            height: resHeight * 0.015,
          ),
          const TransactionWidget(
              ammount: "+\$12,010",
              date: "June 28",
              image: 'assets/images/paypal.png',
              title: "Paypal"),
          SizedBox(
            height: resHeight * 0.015,
          ),
          const TransactionWidget(
              ammount: "+\$232,010",
              date: "Aug 28",
              image: 'assets/images/maintenance.png',
              title: "Car Repair")
        ],
      ),
    );
  }
}
