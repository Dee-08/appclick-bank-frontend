import 'package:bank_app/core/router.dart';
import 'package:bank_app/core/theme/theme.dart';
import 'package:bank_app/provider/provider.dart';
import 'package:bank_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: AppProvider().providers, child: BankAppRoot()),
  );
}

class BankAppRoot extends StatelessWidget {
  const BankAppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouter().route,
      initialRoute: "home",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
    );
  }
}
