import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class FeatureModel {
  final IconData icon;
  final String title;
  final String subtitle;

  FeatureModel({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

class FeatureData {
  static final items = [
    FeatureModel(
      icon: Icons.camera_alt,
      title: 'Live Translation',
      subtitle: 'Translate sign language in real time',
    ),
    FeatureModel(
      icon: Icons.text_snippet,
      title: 'Text Output',
      subtitle: 'Convert signs to readable text',
    ),
    FeatureModel(
      icon: Icons.volume_up,
      title: 'Voice Output',
      subtitle: 'Listen to spoken translations',
    ),
  ];
}

class FeatureCard extends StatelessWidget {
  final FeatureModel feature;

  const FeatureCard({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 6),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                feature.icon,
                size: constraints.maxWidth * 0.25,
                color: AppColors.primary,
              ),
              const SizedBox(height: 12),

              Text(
                feature.title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 6),

              Flexible(
                child: Text(
                  feature.subtitle,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppColors.textLight,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
