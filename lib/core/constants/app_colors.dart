// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// A class that holds the color constants used throughout the application.
///
/// This class provides a centralized place to define and manage the colors
/// used in the app, making it easier to maintain a consistent color scheme
/// and update colors as needed.
class AppColors {
  /// Text Colors

  /// Widget Colors

  // Text Colors
  static Color secondaryTextColor =
      const HSLColor.fromAHSL(1, 0, 0, 0.29).toColor();
  static Color primaryTextColor =
      const HSLColor.fromAHSL(1, 0, 0, 0.118).toColor();
  static Color primary75 =
      const HSLColor.fromAHSL(0.75, 170, 0.231, 0.949).toColor();
  static Color lightText100 = const HSLColor.fromAHSL(1, 0, 0, 1).toColor();
  static Color errorText100 =
      const HSLColor.fromAHSL(1, 0, 0.651, 0.506).toColor();

  // Primary Blue Shades
  static MaterialColor primaryBlue = MaterialColor(
    0xFF0066FF,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 231, 1, 0.975).toColor(),
      10: const HSLColor.fromAHSL(1, 230, 1, 0.953).toColor(),
      20: const HSLColor.fromAHSL(1, 230, 1, 0.898).toColor(),
      30: const HSLColor.fromAHSL(1, 228, 1, 0.837).toColor(),
      40: const HSLColor.fromAHSL(1, 227, 1, 0.761).toColor(),
      50: const HSLColor.fromAHSL(1, 216, 1, 0.5).toColor(),
      60: const HSLColor.fromAHSL(1, 216, 1, 0.476).toColor(),
      70: const HSLColor.fromAHSL(1, 216, 1, 0.427).toColor(),
      80: const HSLColor.fromAHSL(1, 216, 1, 0.369).toColor(),
      90: const HSLColor.fromAHSL(1, 216, 1, 0.302).toColor(),
      100: const HSLColor.fromAHSL(1, 216, 1, 0.214).toColor(),
    },
  );

  // Primary Light Blue Shades
  static MaterialColor primaryLightBlue = MaterialColor(
    0xFF3399FF,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 217, 1, 0.975).toColor(),
      10: const HSLColor.fromAHSL(1, 219, 1, 0.955).toColor(),
      20: const HSLColor.fromAHSL(1, 219, 1, 0.904).toColor(),
      30: const HSLColor.fromAHSL(1, 217, 1, 0.845).toColor(),
      40: const HSLColor.fromAHSL(1, 216, 1, 0.775).toColor(),
      50: const HSLColor.fromAHSL(1, 210, 1, 0.6).toColor(),
      60: const HSLColor.fromAHSL(1, 210, 0.89, 0.573).toColor(),
      70: const HSLColor.fromAHSL(1, 210, 0.702, 0.514).toColor(),
      80: const HSLColor.fromAHSL(1, 210, 0.664, 0.443).toColor(),
      90: const HSLColor.fromAHSL(1, 210, 0.665, 0.363).toColor(),
      100: const HSLColor.fromAHSL(1, 210, 0.664, 0.257).toColor(),
    },
  );

  // Secondary Teal Shades
  static MaterialColor secondaryTeal = MaterialColor(
    0xFF00B3A6,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 180, 0.3, 0.961).toColor(),
      10: const HSLColor.fromAHSL(1, 170, 0.333, 0.929).toColor(),
      20: const HSLColor.fromAHSL(1, 173, 0.351, 0.849).toColor(),
      30: const HSLColor.fromAHSL(1, 172, 0.372, 0.763).toColor(),
      40: const HSLColor.fromAHSL(1, 172, 0.402, 0.659).toColor(),
      50: const HSLColor.fromAHSL(1, 176, 1, 0.351).toColor(),
      60: const HSLColor.fromAHSL(1, 175, 1, 0.335).toColor(),
      70: const HSLColor.fromAHSL(1, 176, 1, 0.3).toColor(),
      80: const HSLColor.fromAHSL(1, 176, 1, 0.259).toColor(),
      90: const HSLColor.fromAHSL(1, 176, 1, 0.212).toColor(),
      100: const HSLColor.fromAHSL(1, 176, 1, 0.149).toColor(),
    },
  );

  // Secondary Light Teal Shades
  static MaterialColor secondaryLightTeal = MaterialColor(
    0xFF66D6CF,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 180, 0.467, 0.971).toColor(),
      10: const HSLColor.fromAHSL(1, 175, 0.481, 0.947).toColor(),
      20: const HSLColor.fromAHSL(1, 176, 0.509, 0.888).toColor(),
      30: const HSLColor.fromAHSL(1, 175, 0.523, 0.827).toColor(),
      40: const HSLColor.fromAHSL(1, 176, 0.536, 0.755).toColor(),
      50: const HSLColor.fromAHSL(1, 176, 0.577, 0.62).toColor(),
      60: const HSLColor.fromAHSL(1, 176, 0.512, 0.59).toColor(),
      70: const HSLColor.fromAHSL(1, 176, 0.4, 0.529).toColor(),
      80: const HSLColor.fromAHSL(1, 176, 0.356, 0.457).toColor(),
      90: const HSLColor.fromAHSL(1, 176, 0.351, 0.375).toColor(),
      100: const HSLColor.fromAHSL(1, 176, 0.348, 0.265).toColor(),
    },
  );

  // Accent Yellow Shades
  static MaterialColor accentYellow = MaterialColor(
    0xFFFFD700,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 42, 1, 0.975).toColor(),
      10: const HSLColor.fromAHSL(1, 42, 1, 0.953).toColor(),
      20: const HSLColor.fromAHSL(1, 44, 1, 0.898).toColor(),
      30: const HSLColor.fromAHSL(1, 45, 1, 0.837).toColor(),
      40: const HSLColor.fromAHSL(1, 46, 1, 0.761).toColor(),
      50: const HSLColor.fromAHSL(1, 51, 1, 0.5).toColor(),
      60: const HSLColor.fromAHSL(1, 51, 1, 0.476).toColor(),
      70: const HSLColor.fromAHSL(1, 50, 1, 0.427).toColor(),
      80: const HSLColor.fromAHSL(1, 51, 1, 0.369).toColor(),
      90: const HSLColor.fromAHSL(1, 51, 1, 0.302).toColor(),
      100: const HSLColor.fromAHSL(1, 51, 1, 0.214).toColor(),
    },
  );

  // Accent Orange Shades
  static MaterialColor accentOrange = MaterialColor(
    0xFFFF914D,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 15, 1, 0.976).toColor(),
      10: const HSLColor.fromAHSL(1, 16, 1, 0.957).toColor(),
      20: const HSLColor.fromAHSL(1, 16, 1, 0.91).toColor(),
      30: const HSLColor.fromAHSL(1, 17, 1, 0.855).toColor(),
      40: const HSLColor.fromAHSL(1, 19, 1, 0.79).toColor(),
      50: const HSLColor.fromAHSL(1, 23, 1, 0.651).toColor(),
      60: const HSLColor.fromAHSL(1, 23, 0.876, 0.62).toColor(),
      70: const HSLColor.fromAHSL(1, 23, 0.673, 0.557).toColor(),
      80: const HSLColor.fromAHSL(1, 23, 0.535, 0.48).toColor(),
      90: const HSLColor.fromAHSL(1, 23, 0.54, 0.392).toColor(),
      100: const HSLColor.fromAHSL(1, 23, 0.535, 0.278).toColor(),
    },
  );

  // Accent Success Shades
  static MaterialColor accentSuccess = MaterialColor(
    0xFFE7F7F0,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 153, 0.529, 0.967).toColor(),
      10: const HSLColor.fromAHSL(1, 150, 0.500, 0.937).toColor(),
      20: const HSLColor.fromAHSL(1, 152, 0.515, 0.871).toColor(),
      30: const HSLColor.fromAHSL(1, 151, 0.538, 0.796).toColor(),
      40: const HSLColor.fromAHSL(1, 153, 0.557, 0.708).toColor(),
      50: const HSLColor.fromAHSL(1, 158, 0.639, 0.500).toColor(),
      60: const HSLColor.fromAHSL(1, 158, 0.638, 0.476).toColor(),
      70: const HSLColor.fromAHSL(1, 158, 0.641, 0.425).toColor(),
      80: const HSLColor.fromAHSL(1, 159, 0.638, 0.369).toColor(),
      90: const HSLColor.fromAHSL(1, 158, 0.636, 0.302).toColor(),
      100: const HSLColor.fromAHSL(1, 158, 0.633, 0.214).toColor(),
    },
  );

// Accent Error Shades
  static MaterialColor accentError = MaterialColor(
    0xFFFDE7E7,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 0, 0.529, 0.967).toColor(),
      10: const HSLColor.fromAHSL(1, 0, 0.533, 0.941).toColor(),
      20: const HSLColor.fromAHSL(1, 0, 0.538, 0.873).toColor(),
      30: const HSLColor.fromAHSL(1, 0, 0.553, 0.798).toColor(),
      40: const HSLColor.fromAHSL(1, 0, 0.651, 0.506).toColor(),
      50: const HSLColor.fromAHSL(1, 0, 0.651, 0.506).toColor(),
      60: const HSLColor.fromAHSL(1, 0, 0.634, 0.482).toColor(),
      70: const HSLColor.fromAHSL(1, 0, 0.636, 0.431).toColor(),
      80: const HSLColor.fromAHSL(1, 0, 0.634, 0.375).toColor(),
      90: const HSLColor.fromAHSL(1, 0, 0.639, 0.304).toColor(),
      100: const HSLColor.fromAHSL(1, 0, 0.636, 0.216).toColor(),
    },
  );

  // Neutral Background Light Shades
  static MaterialColor neutralBackgroundLight = MaterialColor(
    0xFFFAFAFA,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 0, 0, 0.996).toColor(),
      10: const HSLColor.fromAHSL(1, 180, 0.333, 0.994).toColor(),
      20: const HSLColor.fromAHSL(1, 210, 0.333, 0.988).toColor(),
      30: const HSLColor.fromAHSL(1, 200, 0.333, 0.982).toColor(),
      40: const HSLColor.fromAHSL(1, 210, 0.333, 0.976).toColor(),
      50: const HSLColor.fromAHSL(1, 204, 0.294, 0.967).toColor(),
      60: const HSLColor.fromAHSL(1, 204, 0.128, 0.924).toColor(),
      70: const HSLColor.fromAHSL(1, 195, 0.04, 0.824).toColor(),
      80: const HSLColor.fromAHSL(1, 195, 0.027, 0.714).toColor(),
      90: const HSLColor.fromAHSL(1, 200, 0.014, 0.582).toColor(),
      100: const HSLColor.fromAHSL(1, 210, 0.01, 0.412).toColor(),
    },
  );

  // Neutral Background Dark Shades
  static MaterialColor neutralBackgroundDark = MaterialColor(
    0xFFD8D8D8,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 0, 0, 0.949).toColor(),
      10: const HSLColor.fromAHSL(1, 0, 0, 0.906).toColor(),
      20: const HSLColor.fromAHSL(1, 0, 0, 0.8).toColor(),
      30: const HSLColor.fromAHSL(1, 240, 0.006, 0.68).toColor(),
      40: const HSLColor.fromAHSL(1, 240, 0.004, 0.531).toColor(),
      50: const HSLColor.fromAHSL(1, 216, 0.082, 0.12).toColor(),
      60: const HSLColor.fromAHSL(1, 210, 0.069, 0.114).toColor(),
      70: const HSLColor.fromAHSL(1, 210, 0.077, 0.102).toColor(),
      80: const HSLColor.fromAHSL(1, 220, 0.067, 0.088).toColor(),
      90: const HSLColor.fromAHSL(1, 220, 0.081, 0.073).toColor(),
      100: const HSLColor.fromAHSL(1, 210, 0.077, 0.051).toColor(),
    },
  );

  // Neutral Gray 100 Shades
  static MaterialColor neutralGray100 = MaterialColor(
    0xFFFCFCFC,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 0, 0, 0.996).toColor(),
      10: const HSLColor.fromAHSL(1, 0, 0, 0.988).toColor(),
      20: const HSLColor.fromAHSL(1, 0, 0, 0.980).toColor(),
      30: const HSLColor.fromAHSL(1, 0, 0, 0.969).toColor(),
      40: const HSLColor.fromAHSL(1, 0, 0, 0.957).toColor(),
      50: const HSLColor.fromAHSL(1, 0, 0, 0.941).toColor(),
      60: const HSLColor.fromAHSL(1, 0, 0, 0.898).toColor(),
      70: const HSLColor.fromAHSL(1, 0, 0, 0.804).toColor(),
      80: const HSLColor.fromAHSL(1, 0, 0, 0.694).toColor(),
      90: const HSLColor.fromAHSL(1, 0, 0, 0.569).toColor(),
      100: const HSLColor.fromAHSL(1, 0, 0, 0.400).toColor(),
    },
  );

// Neutral Gray 500 Shades
  static MaterialColor neutralGray500 = MaterialColor(
    0xFFE6E6E6,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 0, 0, 0.969).toColor(),
      10: const HSLColor.fromAHSL(1, 0, 0, 0.945).toColor(),
      20: const HSLColor.fromAHSL(1, 0, 0, 0.882).toColor(),
      30: const HSLColor.fromAHSL(1, 0, 0, 0.820).toColor(),
      40: const HSLColor.fromAHSL(1, 0, 0, 0.749).toColor(),
      50: const HSLColor.fromAHSL(1, 0, 0, 0.627).toColor(),
      60: const HSLColor.fromAHSL(1, 0, 0, 0.600).toColor(),
      70: const HSLColor.fromAHSL(1, 0, 0, 0.537).toColor(),
      80: const HSLColor.fromAHSL(1, 0, 0, 0.463).toColor(),
      90: const HSLColor.fromAHSL(1, 0, 0, 0.380).toColor(),
      100: const HSLColor.fromAHSL(1, 0, 0, 0.267).toColor(),
    },
  );

// Neutral Gray 900 Shades
  static MaterialColor neutralGray900 = MaterialColor(
    0xFFF2F2F2,
    <int, Color>{
      0: const HSLColor.fromAHSL(1, 0, 0, 0.949).toColor(),
      10: const HSLColor.fromAHSL(1, 0, 0, 0.910).toColor(),
      20: const HSLColor.fromAHSL(1, 0, 0, 0.808).toColor(),
      30: const HSLColor.fromAHSL(1, 0, 0, 0.690).toColor(),
      40: const HSLColor.fromAHSL(1, 0, 0, 0.549).toColor(),
      50: const HSLColor.fromAHSL(1, 0, 0, 0.200).toColor(),
      60: const HSLColor.fromAHSL(1, 0, 0, 0.192).toColor(),
      70: const HSLColor.fromAHSL(1, 0, 0, 0.173).toColor(),
      80: const HSLColor.fromAHSL(1, 0, 0, 0.149).toColor(),
      90: const HSLColor.fromAHSL(1, 0, 0, 0.122).toColor(),
      100: const HSLColor.fromAHSL(1, 0, 0, 0.086).toColor(),
    },
  );
}
