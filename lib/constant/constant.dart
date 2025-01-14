import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const bgPrimaryColor = Color(0xFFF4F4F9); // Neutral Light for main background
const bgSecondaryColor = Color(0xFFA1C6EA); // Light Sky Blue for secondary background

const textPrimaryColor = Color(0xFF2D3142); // Neutral Dark for primary text
const textSecondaryColor = Colors.black87; // Slightly lighter tone for secondary text

const iconPrimaryColor = Color(0xFF5B84B1); // Primary Accent for prominent icons
const iconSecondaryColor = Color(0xFF5A5A5A); // Neutral muted tone for secondary icons



final textTitle = GoogleFonts.poppins(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: textPrimaryColor,
);

final textSubTitle = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: textSecondaryColor,
);

final textBtn = GoogleFonts.poppins(
  fontSize: 18,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);
