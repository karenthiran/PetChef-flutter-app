import 'package:flutter/material.dart';
import 'package:petchef/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/dairdry.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dry Dog Food",
                      style: Appwidget.headlinetextfeildstyle(),
                    ),
                    Text(
                      "Air Dried Beef Recipe Dog Food",
                      style: Appwidget.foodDescribe(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  a.toString(),
                  style: Appwidget.pricestyle(),
                ),
                SizedBox(width: 10.0),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Beef, Beef Lung, Beef Liver, Dicalcium Phosphate, Flaxseed, Calcium Carbonate, Salmon Oil (Preserved with Mixed Tocopherols), Salt, Potassium Chloride, Choline (Choline Chloride), Ferrous Sulfate, Zinc Sulfate, Vitamin E Supplement, Copper Amino Acid Complex, Sodium Selenite, Manganese Sulfate, Niacin Supplement, Vitamin B5 (Calcium Pantothenate), Riboflavin Supplement, Vitamin A Supplement, Vitamin B12 Supplement, Vitamin B12 (Thiamine Mononitrate), Vitamin B6 (Pyridoxine Hydrochloride), Calcium Iodate, Vitamin D3 Supplement, Vitamin B9 (Folic Acid).",
              style: Appwidget.aboutfood(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price ",
                        style: Appwidget.pricestyle(),
                      ),
                      Text(
                        "\$25",
                        style: Appwidget.pricestyle(),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add to Cart",
                          style: Appwidget.addtocart(),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 207, 192, 192),
                              borderRadius: BorderRadius.circular(3)),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
