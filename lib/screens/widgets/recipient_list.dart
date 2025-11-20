import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/extensions.dart';
import 'package:bank_app/provider/recipient_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipientList extends StatelessWidget {
  const RecipientList({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecipientProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Send To",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 20),

        Row(
          children: [
            GestureDetector(
              onTap: provider.openAddForm,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 26,
                    child: Icon(Icons.add, color: AppColor.blue),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Add",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColor.textColor(context),
                    ),
                  ),
                ],
              ),
            ),

            20.getWidthWhiteSpacing,

            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: provider.recipients.map((person) {
                    return GestureDetector(
                      onTap: () => provider.openEditForm(person),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: AppColor.blue,
                              child: Text(
                                person.name[0].toUpperCase(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(person.name),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
