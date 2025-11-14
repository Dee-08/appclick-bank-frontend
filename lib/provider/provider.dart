import 'package:bank_app/provider/auth_provider.dart';
import 'package:bank_app/provider/home_provider.dart';
import 'package:bank_app/provider/onboarding_provider.dart';
import 'package:bank_app/provider/stock_selection_provider.dart';
import 'package:bank_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => OnboardingProvider()),
    ChangeNotifierProvider(create: (_) => AuthProvider()),
    ChangeNotifierProvider(create: (_) => HomeProvider()),
    ChangeNotifierProvider(create: (_) => StockSelectionProvider()),
  ];
}
