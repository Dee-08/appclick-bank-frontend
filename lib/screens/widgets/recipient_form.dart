import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/provider/recipient_provider.dart';
import 'package:bank_app/provider/wallet_provider.dart';
import 'package:bank_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipientForm extends StatefulWidget {
  const RecipientForm({super.key});

  @override
  State<RecipientForm> createState() => _RecipientFormState();
}

class _RecipientFormState extends State<RecipientForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController accController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<RecipientProvider>(context, listen: false);

    fullNameController = TextEditingController(
      text: provider.selected?.name ?? "",
    );
    accController = TextEditingController(
      text: provider.selected?.account ?? "",
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecipientProvider>(context);
    final walletProvider = Provider.of<WalletProvider>(context);

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              provider.selected == null ? "Add Recipient" : "Edit Recipient",
              style: context.textTheme.titleMedium?.copyWith(
                color: AppColor.textColor(context),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            20.getHeightWhiteSpacing,
            AppTextfield(
              label: "Name",
              controller: walletProvider.nameController,
              decoration: InputDecoration(
                prefixIcon: ImageWidget(imagePath: AppImages.user),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Name cannot be empty";
                }
                return null;
              },
            ),
            12.getHeightWhiteSpacing,
            AppTextfield(
              label: "Account Number",
              controller: walletProvider.accountController,
              decoration: InputDecoration(
                prefixIcon: ImageWidget(imagePath: AppImages.wallet),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Account number is required";
                }
                if (value.length < 10) {
                  return "Account number must be at least 10 digits";
                }
                return null;
              },
            ),
            12.getHeightWhiteSpacing,
            AppTextfield(
              label: "Description",
              controller: walletProvider.descriptionController,
              decoration: InputDecoration(
                prefixIcon: ImageWidget(imagePath: AppImages.email),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Name cannot be empty";
                }
                return null;
              },
            ),
            20.getHeightWhiteSpacing,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: provider.closeForm,
                  child: Text(
                    "Cancel",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColor.textColor(context),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Only saves if validated
                      if (provider.selected == null) {
                        provider.addRecipient(
                          walletProvider.nameController.text,
                          walletProvider.accountController.text,
                        );
                      } else {
                        provider.updateRecipient(
                          walletProvider.nameController.text,
                          walletProvider.accountController.text,
                        );
                      }
                    }
                  },
                  child: Text(
                    "Save",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: AppColor.textColor(context),
                    ),
                  ),
                ),
              ],
            ),
            30.getHeightWhiteSpacing,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter your Amount",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.blue,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Change currency?",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    20.getHeightWhiteSpacing,
                    Row(
                      children: [
                        Text(
                          "USD",
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        20.getWidthWhiteSpacing,
                        Expanded(
                          child: TextField(
                            style: context.textTheme.titleLarge?.copyWith(
                              color: AppColor.textColor(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            30.getHeightWhiteSpacing,
            AppButtons(
              onPressed: () {
                walletProvider.transfer();
              },
              text: "Send Money",
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
