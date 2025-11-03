import 'package:flutter/material.dart';

void main(){
runApp(BankAppRoot());
}
class BankAppRoot extends StatelessWidget {
  const BankAppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: "home",
    );
  }
}