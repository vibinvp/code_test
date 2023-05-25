import 'package:flutter/material.dart';

import '../../constants/style.dart';

class GameCard extends StatelessWidget {
  final String image;
  final String title;
  const GameCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            GlobalVariabels.vertical10,
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            GlobalVariabels.vertical10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Positioned(
                          left: 40,
                          child: Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: const DecorationImage(
                                image: AssetImage('assets/person3.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          child: Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: const DecorationImage(
                                image: AssetImage('assets/person2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 3.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: const DecorationImage(
                              image: AssetImage('assets/person1.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "5,00,000+",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "players",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                GlobalVariabels.horizontal50,
                SizedBox(
                  height: 40,
                  width: 134,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(255, 193, 4, 100),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: const Text("Play Now"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
