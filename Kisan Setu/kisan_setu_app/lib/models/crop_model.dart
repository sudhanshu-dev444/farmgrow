import 'package:flutter/material.dart';

class Crop {
  final String id;
  final String nameEn;
  final String nameHi;
  final double mspPerQtl;
  final IconData icon;

  const Crop({
    required this.id,
    required this.nameEn,
    required this.nameHi,
    required this.mspPerQtl,
    required this.icon,
  });

  String get displayName => '$nameEn ($nameHi)';
  String get formattedMsp => 'MSP: ₹${mspPerQtl.toStringAsFixed(0)}/Qtl';

  static const List<Crop> sampleCrops = [
    Crop(
      id: 'wheat',
      nameEn: 'Wheat',
      nameHi: 'गेहूँ',
      mspPerQtl: 2425,
      icon: Icons.grass,
    ),
    Crop(
      id: 'paddy',
      nameEn: 'Paddy / Rice',
      nameHi: 'धान',
      mspPerQtl: 2320,
      icon: Icons.eco,
    ),
    Crop(
      id: 'mustard',
      nameEn: 'Mustard',
      nameHi: 'सरसों',
      mspPerQtl: 5950,
      icon: Icons.spa,
    ),
    Crop(
      id: 'gram',
      nameEn: 'Gram / Chana',
      nameHi: 'चना',
      mspPerQtl: 5650,
      icon: Icons.grain,
    ),
    Crop(
      id: 'sugarcane',
      nameEn: 'Sugarcane',
      nameHi: 'गन्ना',
      mspPerQtl: 315,
      icon: Icons.park,
    ),
    Crop(
      id: 'cotton',
      nameEn: 'Cotton',
      nameHi: 'कपास',
      mspPerQtl: 6620,
      icon: Icons.cloud,
    ),
    Crop(
      id: 'maize',
      nameEn: 'Maize',
      nameHi: 'मक्का',
      mspPerQtl: 2090,
      icon: Icons.agriculture,
    ),
  ];
}
