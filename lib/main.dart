import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            icon: const Icon(Icons.no_food),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        // 主页面布局：可滚动并居中内容
        body: const SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: ProfileHeader(),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 1. 头像
        ClipOval(
          child: Image.asset(
            'assets/images/profile.jpg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),

        // 2. 名字
        const Text(
          "ZHAO FANGXUAN",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),

        // 3. Student 标签
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(88.888),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.school, size: 17, color: Colors.yellow),
              SizedBox(width: 4),
              Text("Student", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 40),

        // 4. 底部 4 张卡片（2×2 布局）
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      Icons.email,
                      "Email",
                      "227217@student.upm.edu.my",
                      Colors.yellowAccent,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCard(
                      Icons.phone,
                      "Phone",
                      "+60 12-345 6789",
                      Colors.yellowAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      Icons.location_on,
                      "Location",
                      "Serdang, Malaysia",
                      Colors.purpleAccent,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCard(
                      Icons.school,
                      "School",
                      "UPM",
                      Colors.yellowAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // 一个卡片的通用组件：图标 + 标题 + 内容
  Widget _buildCard(IconData icon, String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 38, color: Colors.black87),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(value),
        ],
),
    );
  }
}
