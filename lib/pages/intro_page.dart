import 'package:flutter/material.dart';
import 'package:e_commerce_ui/pages/HomePage.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'assets/images/nike.png',
              height: 240,
              ),
            ),

            const SizedBox(height: 48),
            // title
            Text(
              'Just Do It',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ) ,
            ),
            const SizedBox(height: 24,),
            // sub title
            Text(
              'Great shoes for value...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ) ,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 48,),

            // start now button
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)
                ),
                padding: const EdgeInsets.all(25),
              
                child: Center(
                  child: const Text(
                      'Shop now',
                      style: TextStyle(
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
              
                  ),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
