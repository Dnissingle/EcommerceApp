import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body : Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset('lib/images/logo.webp',height: 240,),

              //title
              const SizedBox(height: 20,),
              const Text(
                "Welcome to Online Shopping!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 20,),

              //subtitle
          const Text(
            "Place where you can browse and shop online!",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            //Start now
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    "Start Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),

                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
