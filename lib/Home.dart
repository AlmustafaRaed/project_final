import 'Product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey.shade200,
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  "images/headphones_c_1.Webp",
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        "BEATS SOLO",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Wireless",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "HEADPHONES",
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Description \nThe game begins here, With immortal 1000D gaming headphones, "
                        "don't just play the game - feel it, live it, and own it."
                        " Level up your audio game with 7.1 channel.",
                        style: TextStyle(letterSpacing: 2),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ShowProducts()));
                              });
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            child: const Text(
                              "SHOP NOW",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
