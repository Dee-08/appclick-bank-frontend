import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColor.grey,
                    child: Icon(
                      Icons.person,
                      color: AppColor.white,
                      size: 30,
                    ),
                  ),
                ),

                const SizedBox(width: 12), 

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(
                        color: AppColor.darkGrey,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Tanya\nMyroniuk",
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.05,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            ImageWidget(imagePath: AppImages.card),
          ],
          


        ),
      ),
    );
  }
}
