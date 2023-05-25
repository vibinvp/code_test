import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ui/screens/widgets/gamecard.dart';
import '../constants/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
            child: SizedBox(
                height: 45,
                width: 45,
                child: Image.asset(
                  "assets/logo.png",
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell,
                    size: 24,
                  )),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalVariabels.vertical20,
              const Text(
                "Hello, Dipak 👋",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              GlobalVariabels.vertical10,
              Image.asset("assets/banner.jpg"),
              GlobalVariabels.vertical20,
              const GameCard(
                image: 'assets/playnow.jpg',
                title: 'Play Ludo and Earn Money',
              ),
              GlobalVariabels.vertical20,
              const GameCard(
                  image: "assets/Play Cricket banner.png",
                  title: "Play Cricket Fantasy League")
            ],
          ),
        ),
      ),
    );
  }
}
