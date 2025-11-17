import 'package:bank_app/core/constants/app_images.dart';

class TransactionsData {
  static final transactions = [
    {
      "header": "Apple Store",
      "sub": "Entertainment",
      "image": AppImages.ios,
      "amount": "- \$5.99",
    },
    {
      "header": "Spotify",
      "sub": "music",
      "image": AppImages.spotify,
      "amount": "- \$12.99",
    },
    {
      "header": "Money Transfer",
      "sub": "Transaction",
      "image": AppImages.inbound,
      "amount": "\$300",
    },
    {
      "header": "Grocery",
      "sub": "Purchase",
      "image": AppImages.grocery,
      "amount": "- \$88",
    },
  ];
}
