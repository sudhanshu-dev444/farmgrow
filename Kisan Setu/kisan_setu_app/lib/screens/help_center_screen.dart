import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import '../widgets/custom_app_bar.dart';
import '../state/app_state.dart';

class HelpCenterScreen extends StatelessWidget {
  final bool isEmbeddedInNav;

  const HelpCenterScreen({
    super.key,
    this.isEmbeddedInNav = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: isEmbeddedInNav
          ? null
          : const CustomAppBar(
              title: 'Kisan Setu / किसान सेतु',
              showBackButton: true,
            ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Voice Guide Banner
                AnimatedBuilder(
                  animation: AppState(),
                  builder: (context, _) {
                    final isVoiceActive = AppState().isVoiceGuideActive;
                    return InkWell(
                      onTap: () {
                        AppState().toggleVoiceGuide();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              isVoiceActive
                                  ? 'Voice Guide Paused / आवाज गाइड बंद'
                                  : 'Voice Guide Active: Speaking English/Hindi / आवाज गाइड चालू',
                            ),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: isVoiceActive
                              ? AppColors.secondaryFixed
                              : AppColors.primaryContainer,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: isVoiceActive ? AppColors.secondary : AppColors.primary,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              isVoiceActive ? Icons.record_voice_over : Icons.volume_up,
                              size: 38,
                              color: isVoiceActive
                                  ? AppColors.onSecondaryContainer
                                  : AppColors.onPrimaryContainer,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isVoiceActive ? 'Voice Guide Active' : 'Start Voice Guide',
                                    style: AppTypography.headlineSmall(
                                      color: isVoiceActive
                                          ? AppColors.onSecondaryContainer
                                          : AppColors.onPrimaryContainer,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    isVoiceActive
                                        ? 'टैप करके बंद करें'
                                        : 'वॉइस गाइड शुरू करें',
                                    style: AppTypography.labelMedium(
                                      color: isVoiceActive
                                          ? AppColors.onSecondaryContainer
                                          : AppColors.onPrimaryContainer.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),

                // Language Selection Grid
                Text(
                  'Change Language / भाषा बदलें',
                  style: AppTypography.headlineSmall(color: AppColors.onSurface),
                ),
                const SizedBox(height: 12),
                AnimatedBuilder(
                  animation: AppState(),
                  builder: (context, _) {
                    final currentLang = AppState().currentLanguage;
                    return GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2.8,
                      children: [
                        _buildLangButton(AppLanguage.english, currentLang),
                        _buildLangButton(AppLanguage.hindi, currentLang),
                        _buildLangButton(AppLanguage.punjabi, currentLang),
                        _buildLangButton(AppLanguage.marathi, currentLang),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 24),

                // Common Issues (Pictorial Cards)
                Text(
                  'Common Issues / सामान्य समस्याएं',
                  style: AppTypography.headlineSmall(color: AppColors.onSurface),
                ),
                const SizedBox(height: 12),
                _buildFaqCard(
                  context,
                  icon: Icons.calendar_month,
                  titleEn: 'Booking Help',
                  titleHi: 'बुकिंग सहायता',
                  description: 'How to reschedule or cancel a slot at Mandi',
                ),
                const SizedBox(height: 10),
                _buildFaqCard(
                  context,
                  icon: Icons.payments,
                  titleEn: 'Payment Issues',
                  titleHi: 'भुगतान समस्याएं',
                  description: 'Direct Benefit Transfer (DBT) verification & timing',
                ),
                const SizedBox(height: 10),
                _buildFaqCard(
                  context,
                  icon: Icons.queue,
                  titleEn: 'Queue Status',
                  titleHi: 'कतार स्थिति',
                  description: 'Understand live token numbers and estimated wait',
                ),
                const SizedBox(height: 24),

                // Contact Support Buttons
                Text(
                  'Contact Support / संपर्क करें',
                  style: AppTypography.headlineSmall(color: AppColors.onSurface),
                ),
                const SizedBox(height: 12),

                // Call Helpline
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Calling Toll-Free Helpline: 1800-180-1551...')),
                    );
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryContainer,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.secondary, width: 2),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.call, size: 32, color: AppColors.onSecondaryContainer),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Call Helpline (1800-180-1551)',
                                style: AppTypography.headlineSmall(color: AppColors.onSecondaryContainer),
                              ),
                              Text(
                                'हेल्पलाइन को कॉल करें (टोल-फ्री)',
                                style: AppTypography.labelMedium(color: AppColors.onSecondaryContainer),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Chat with Sahayak
                InkWell(
                  onTap: () {
                    _showChatDialog(context);
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceContainerHigh,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.outlineVariant, width: 2),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.chat, size: 32, color: AppColors.primary),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chat with Sahayak',
                                style: AppTypography.headlineSmall(color: AppColors.onSurface),
                              ),
                              Text(
                                'सहायक से चैट करें (AI Assistant)',
                                style: AppTypography.labelMedium(color: AppColors.onSurfaceVariant),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLangButton(AppLanguage lang, AppLanguage currentLang) {
    final isSelected = lang == currentLang;

    return InkWell(
      onTap: () => AppState().setLanguage(lang),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondaryContainer : AppColors.surface,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? AppColors.secondary : AppColors.outlineVariant,
            width: isSelected ? 2 : 1.5,
          ),
        ),
        child: Text(
          lang.nativeLabel,
          style: AppTypography.labelLarge(
            color: isSelected ? AppColors.onSecondaryContainer : AppColors.onSurface,
          ).copyWith(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildFaqCard(
    BuildContext context, {
    required IconData icon,
    required String titleEn,
    required String titleHi,
    required String description,
  }) {
    return Card(
      color: AppColors.mintCardSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: AppColors.mintCardBorder),
      ),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
              backgroundColor: AppColors.surfaceContainerLowest,
              title: Text('$titleEn / $titleHi'),
              content: Text(description),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
        borderRadius: BorderRadius.circular(14),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: AppColors.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: AppColors.onPrimaryContainer, size: 28),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$titleEn / $titleHi',
                      style: AppTypography.labelLarge(color: AppColors.onSurface).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      description,
                      style: AppTypography.bodySmall(color: AppColors.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 14, color: AppColors.outline),
            ],
          ),
        ),
      ),
    );
  }

  void _showChatDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.surfaceContainerLowest,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
            left: 20,
            right: 20,
          ),
          child: SizedBox(
            height: 380,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Krishi Sahayak Assistant', style: AppTypography.headlineSmall(color: AppColors.primary)),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: ListView(
                    children: [
                      _buildChatBubble('Namaste Ram Singh ji! How can I help you today with your Mandi slot booking or DBT payment?', isUser: false),
                      _buildChatBubble('Can I reschedule my slot to tomorrow morning?', isUser: true),
                      _buildChatBubble('Yes, Sonipat Main Mandi has 42 available morning slots for tomorrow. Would you like me to book it for you?', isUser: false),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type your question / अपना प्रश्न लिखें...',
                            fillColor: AppColors.surface,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton.filled(
                        style: IconButton.styleFrom(backgroundColor: AppColors.primary),
                        onPressed: () {},
                        icon: const Icon(Icons.send),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildChatBubble(String text, {required bool isUser}) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: isUser ? AppColors.primary : AppColors.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
        ),
        constraints: const BoxConstraints(maxWidth: 280),
        child: Text(
          text,
          style: AppTypography.bodySmall(
            color: isUser ? AppColors.onPrimary : AppColors.onSurface,
          ),
        ),
      ),
    );
  }
}
