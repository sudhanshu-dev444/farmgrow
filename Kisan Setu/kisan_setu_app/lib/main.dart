import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'state/app_state.dart';
import 'screens/login_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/aadhaar_screen.dart';
import 'screens/dbt_setup_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/book_slot_screen.dart';
import 'screens/mandi_token_screen.dart';
import 'screens/quality_check_screen.dart';
import 'screens/payments_screen.dart';
import 'screens/help_center_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const KisanSetuApp());
}

class KisanSetuApp extends StatelessWidget {
  const KisanSetuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppState(),
      builder: (context, _) {
        return MaterialApp(
          title: 'Kisan Setu',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: '/dashboard',
          routes: {
            '/': (context) => const DashboardScreen(),
            '/login': (context) => const LoginScreen(),
            '/otp': (context) => const OtpScreen(),
            '/onboarding/aadhaar': (context) => const AadhaarScreen(),
            '/onboarding/dbt': (context) => const DbtSetupScreen(),
            '/dashboard': (context) => const DashboardScreen(),
            '/book-slot': (context) => const BookSlotScreen(),
            '/mandi-token': (context) => const MandiTokenScreen(),
            '/track': (context) => const QualityCheckScreen(),
            '/payments': (context) => const PaymentsScreen(),
            '/help': (context) => const HelpCenterScreen(),
          },
        );
      },
    );
  }
}
