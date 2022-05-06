// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/coffe_type.dart';
import 'package:flutter_application_1/util/coffee_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffees
  final List coffeeTypes = [
    //[coffee type, isSelected]
    [
      'Coffee',
      true,
    ],
    [
      'Cappucino',
      false,
    ],
    [
      'Iced Latte',
      false,
    ],
    [
      'Latte',
      false,
    ],
  ];

  //selected coffee type
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ]),

      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        //Name
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text("The Best Coffee in Town",
              style: GoogleFonts.bebasNeue(
                fontSize: 40,
              )),
        ),

        SizedBox(height: 25),
        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'What are you drinking...',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
            ),
          ),
        ),

        SizedBox(height: 25),
        //types of drinks
        // ignore: sized_box_for_whitespace
        Container(
          height: 20,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffeeTypes.length,
            itemBuilder: (context, index) {
              return CoffeeType(
                coffeeType: coffeeTypes[index][0],
                isSelected: coffeeTypes[index][1],
                onTap: () {
                  coffeeTypeSelected(index);
                },
              );
            },
          ),
        ),

        //list of drinks
        Expanded(
          child: ListView(
          scrollDirection: Axis.horizontal,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CoffeeTile(
              coffeeImagePath: 'lib/images/black.avif',
              coffeeName: 'Coffee',
              coffeePrice: '4.00',
            ),

            CoffeeTile(
              coffeeImagePath: 'lib/images/hot.avif',
              coffeeName: 'Cappucino',
              coffeePrice: '5.00',
            ),

            CoffeeTile(
              coffeeImagePath: 'lib/images/iced.avif',
              coffeeName: 'Iced Latte',
              coffeePrice: '6.00',
            ),

            CoffeeTile(
              coffeeImagePath: 'lib/images/latte.avif',
              coffeeName: 'Latte',
              coffeePrice: '7.00',
            ),
          ],
        ))

        //bottom navbar
      ]),
    );
  }
}
