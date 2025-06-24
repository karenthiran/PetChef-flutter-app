import 'package:flutter/material.dart';
import 'package:petchef/pages/details.dart';
import 'package:petchef/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool drydogfood = false,
      wetdogfood = false,
      puppyfood = false,
      seniordogfood = false,
      grainfreefood = false,
      dogsuppeliment = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, right: 10.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello, Kri",
                  style: Appwidget.boldtextfeildstyle(),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Dog Nutritions",
              style: Appwidget.headlinetextfeildstyle(),
              textAlign: TextAlign.left,
            ),
            Text(
              "The natural foods, your pets deserves",
              textAlign: TextAlign.left,
              style: Appwidget.lighttextfeildstyle(),
            ),
            SizedBox(
              height: 10.0,
            ),
            ShowItem(),
            SizedBox(
              height: 30.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Details()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/dairdry.png",
                          height: 150.0,
                          width: 150.0,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Air Dried Beef Recipe Dog Food",
                                style: Appwidget.foodDescribe(),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Real Fish, Ocean Fish",
                                style: Appwidget.lighttextfeildstyle(),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$25",
                                style: Appwidget.pricestyle(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ShowItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            drydogfood = true;
            wetdogfood = false;
            puppyfood = false;
            seniordogfood = false;
            grainfreefood = false;
            dogsuppeliment = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: drydogfood
                      ? const Color.fromARGB(255, 187, 173, 134)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/drydogfood.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            drydogfood = false;
            wetdogfood = true;
            puppyfood = false;
            seniordogfood = false;
            grainfreefood = false;
            dogsuppeliment = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: wetdogfood
                      ? Color.fromARGB(255, 187, 173, 134)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/wetdogfood.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            drydogfood = false;
            wetdogfood = false;
            grainfreefood = true;
            seniordogfood = false;
            puppyfood = false;
            dogsuppeliment = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: grainfreefood
                      ? Color.fromARGB(255, 187, 173, 134)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/grainfreedogfood.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            drydogfood = false;
            wetdogfood = false;
            grainfreefood = false;
            puppyfood = true;
            seniordogfood = false;
            dogsuppeliment = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: puppyfood
                      ? Color.fromARGB(255, 187, 173, 134)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/puppyfood.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            drydogfood = false;
            wetdogfood = false;
            grainfreefood = false;
            puppyfood = false;
            seniordogfood = true;
            dogsuppeliment = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: seniordogfood
                      ? Color.fromARGB(255, 187, 173, 134)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/seniordogfood.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            drydogfood = false;
            wetdogfood = false;
            grainfreefood = false;
            puppyfood = false;
            seniordogfood = false;
            dogsuppeliment = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: dogsuppeliment
                      ? Color.fromARGB(255, 187, 173, 134)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "images/dogsupplements.png",
                height: 40.0,
                width: 40.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
