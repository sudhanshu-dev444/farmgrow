import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import '../state/app_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController(text: '9876543210');
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _onSendOtp() {
    if (_formKey.currentState?.validate() ?? false) {
      AppState().setMobile(_phoneController.text.trim());
      Navigator.pushNamed(context, '/otp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Column(
          children: [
            // Top Language Selector Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kisan Setu',
                        style: AppTypography.headlineMedium(color: AppColors.primary),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: AppLanguage.values.map((lang) {
                        final isSelected = AppState().currentLanguage == lang;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ChoiceChip(
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (isSelected)
                                  const Padding(
                                    padding: EdgeInsets.only(right: 4),
                                    child: Icon(Icons.check, size: 16, color: AppColors.onPrimaryContainer),
                                  ),
                                Text(lang.nativeLabel),
                              ],
                            ),
                            selected: isSelected,
                            selectedColor: AppColors.primaryContainer,
                            backgroundColor: AppColors.surfaceContainerLow,
                            labelStyle: AppTypography.labelMedium(
                              color: isSelected ? AppColors.onPrimaryContainer : AppColors.onSurfaceVariant,
                            ),
                            side: BorderSide(
                              color: isSelected ? AppColors.primaryContainer : AppColors.outlineVariant,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onSelected: (_) {
                              setState(() {
                                AppState().setLanguage(lang);
                              });
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),

            // Main Form Area
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 440),
                    child: Card(
                      color: AppColors.surfaceContainerLowest,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(color: AppColors.outlineVariant, width: 1.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Agriculture Hero Avatar
                              Container(
                                width: 88,
                                height: 88,
                                decoration: BoxDecoration(
                                  color: AppColors.tertiaryFixed,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.primaryContainer, width: 4),
                                ),
                                child: const Icon(
                                  Icons.agriculture,
                                  size: 48,
                                  color: AppColors.primary,
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Welcome Title
                              Text(
                                'Welcome Back / स्वागत है',
                                style: AppTypography.headlineLarge(color: AppColors.primary),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Enter your 10-digit mobile number to login.\nलॉगिन करने के लिए अपना 10 अंकों का मोबाइल नंबर दर्ज करें।',
                                style: AppTypography.bodyMedium(color: AppColors.onSurfaceVariant),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 28),

                              // Mobile Input Box
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mobile Number / मोबाइल नंबर',
                                    style: AppTypography.labelLarge(color: AppColors.onSurface),
                                  ),
                                  const SizedBox(height: 6),
                                  TextFormField(
                                    controller: _phoneController,
                                    keyboardType: TextInputType.phone,
                                    maxLength: 10,
                                    style: AppTypography.bodyLarge(color: AppColors.onSurface),
                                    decoration: InputDecoration(
                                      counterText: '',
                                      prefixIcon: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                                        child: Text(
                                          '+91',
                                          style: AppTypography.bodyLarge(color: AppColors.onSurfaceVariant),
                                        ),
                                      ),
                                      hintText: '00000 00000',
                                    ),
                                    validator: (val) {
                                      if (val == null || val.trim().length < 10) {
                                        return 'Please enter valid 10-digit number';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'We will send an OTP for verification.',
                                    style: AppTypography.labelSmall(color: AppColors.onSurfaceVariant),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),

                              // Submit Button
                              ElevatedButton(
                                onPressed: _onSendOtp,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Send OTP / ओटीपी भेजें',
                                      style: AppTypography.labelLarge(color: AppColors.onPrimaryContainer),
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(Icons.arrow_forward, size: 20),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Divider(),
                              const SizedBox(height: 12),
                              Text(
                                'Secure Gov. Verified Procurement Portal',
                                style: AppTypography.bodySmall(color: AppColors.outline),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
