import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Profile Avatar",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

              // Camera Icon
              const Text(
                "Profile with Camera Icon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 20),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        const AssetImage("Assets/profile.png"),
                  ),

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue,
                      child: const Icon(
                        Icons.camera_alt,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Online Indicator
              const Text(
                "Profile with Online Indicator",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 20),

              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        const AssetImage("Assets/profile.png"),
                  ),

                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}