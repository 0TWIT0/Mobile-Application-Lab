import 'package:flutter/material.dart';
import 'package:ssw3401lab/block.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Declaring a function
  void doSomething() {
    print("Hello!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        // 主页面布局：可滚动并居中内容
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  'assets/images/profile.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "ZHAO FANGXUAN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14, 
                  vertical: 6
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(88.888),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 17, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text(
                      "Student", 
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),  
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Block(
                      "UPM nailong",
                      "assets/images/UPM_nailong.jpg",
                      colour: Colors.green,
                      number: 19,
                    ),
                    Block(
                      "nailong",
                      "assets/images/nailong.webp",
                      colour: Colors.yellow,
                    ),
                    Block(
                      "nailong",
                      "assets/images/nailong.webp",
                      colour: Colors.blue,
                    ),
                    Block(
                      "nailong",
                      "assets/images/nailong.webp",
                      colour: Colors.purpleAccent,
                    ),
                  ],
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}

