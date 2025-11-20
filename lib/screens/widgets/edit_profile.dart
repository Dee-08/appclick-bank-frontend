import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/screens/widgets/app_textfield.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColor.dark,
                      size: 18,
                    ),
                  ),
                ),
                70.getWidthWhiteSpacing,
                Text(
                  "Edit Profile",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColor.dark,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "David Daniel",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Senior Designer",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 40),
            // Text(
            //   "Full Name",
            //   style: context.textTheme.bodyMedium?.copyWith(
            //     color: Colors.grey.shade600,
            //   ),
            // ),
            20.getHeightWhiteSpacing,
            Form(
              key: formKey,
              child: Column(
                spacing: 10,
                children: [
                  AppTextfield(
                    label: "Full Name",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.user),
                      ),
                      hintText: "David Daniel",
                    ),
                  ),
                  20.getHeightWhiteSpacing,
                ],
              ),
            ),
            AppTextfield(
              label: "Email Address",
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: ImageWidget(imagePath: AppImages.email),
                ),
                hintText: "Daviddaniel@gmail.com",
              ),
            ),
            20.getHeightWhiteSpacing,
            AppTextfield(
              label: "Phone Number",
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: ImageWidget(imagePath: AppImages.phone),
                ),
                hintText: "+2348167247426",
              ),
            ),
            20.getHeightWhiteSpacing,

            Text(
              "Birth Date",
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: 16,
                color: Colors.grey.shade500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // DAY DROPDOWN
                Expanded(
                  child: DropdownMenu<String>(
                    width: double.infinity,

                    hintText: "28",
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                    ),
                    dropdownMenuEntries: List.generate(
                      31,
                      (index) => DropdownMenuEntry(
                        value: (index + 1).toString(),
                        label: (index + 1).toString(),
                      ),
                    ),
                    onSelected: (value) {},
                  ),
                ),

                SizedBox(width: 12),

                // MONTH DROPDOWN
                Expanded(
                  child: DropdownMenu<String>(
                    width: double.infinity,
                    hintText: "September",
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                    ),
                    dropdownMenuEntries:
                        [
                              "January",
                              "February",
                              "March",
                              "April",
                              "May",
                              "June",
                              "July",
                              "August",
                              "September",
                              "October",
                              "November",
                              "December",
                            ]
                            .map((m) => DropdownMenuEntry(value: m, label: m))
                            .toList(),
                    onSelected: (value) {},
                  ),
                ),

                SizedBox(width: 12),

                // YEAR DROPDOWN
                Expanded(
                  child: DropdownMenu<String>(
                    width: double.infinity,
                    hintText: "2000",
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    inputDecorationTheme: InputDecorationTheme(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                    ),
                    dropdownMenuEntries: List.generate(
                      70,
                      (index) => DropdownMenuEntry(
                        value: (1950 + index).toString(),
                        label: (1950 + index).toString(),
                      ),
                    ),
                    onSelected: (value) {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
