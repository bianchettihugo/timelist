import 'package:flutter/material.dart';

class LightTheme {
  const LightTheme();

  final colorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff4866FA),
    primaryContainer: Color(0xffDCE1FC),
    onPrimary: Color(0xffFFFFFF),
    secondary: Color(0xff55D6BE),
    onSecondary: Color(0xff191919),
    error: Color(0xffef233c),
    onError: Color(0xffFFFFFF),
    surfaceContainer: Color(0xffFFFFFF),
    surface: Color(0xffFCFCFC),
    onSurface: Color(0xff191919),
    surfaceContainerHighest: Color(0xffF6F6F6),
    onSurfaceVariant: Color(0xff4F4F57),
  );

  ThemeData get theme => ThemeData(
    useMaterial3: false,
    primaryColor: const Color(0xff4866FA),
    primaryColorDark: const Color(0xff3F5AE1),
    primaryColorLight: const Color(0xff6A85FF),
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xffFCFCFC),
    disabledColor: const Color(0xff666666),
    dividerColor: const Color(0xffE8E8E8),
    cardColor: const Color(0xffFFFFFF),
    colorScheme: colorScheme,
    elevatedButtonTheme: buttonTheme,
    inputDecorationTheme: inputTheme,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        height: 1.12,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      displayMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        height: 1.16,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      displaySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        height: 1.22,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      headlineLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        height: 1.25,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      headlineMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        height: 1.29,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      headlineSmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        height: 1.33,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      titleLarge: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        height: 1.27,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        height: 1.33,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.43,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.43,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.33,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        height: 1.50,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.15,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.15,
        textBaseline: TextBaseline.alphabetic,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: 'Inter',
      ),
    ).apply(
      bodyColor: const Color(0xff191919),
      displayColor: const Color(0xff191919),
    ),
  );

  ElevatedButtonThemeData get buttonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      visualDensity: VisualDensity.comfortable,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return theme.dividerColor;
          }
          return theme.primaryColor;
        },
      ),
      minimumSize: WidgetStateProperty.all<Size>(
        const Size(double.infinity, 60),
      ),
    ),
  );

  InputDecorationTheme get inputTheme => InputDecorationTheme(
    contentPadding: const EdgeInsets.fromLTRB(12, 16, 12, 17),
    filled: true,
    fillColor: colorScheme.surfaceContainerHighest,
    focusedBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: colorScheme.surfaceContainer,
        width: 1,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: colorScheme.surfaceContainer,
        width: 1,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: colorScheme.error,
        width: 1,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(
        color: colorScheme.surfaceContainer,
        width: 1,
      ),
    ),
  );
}