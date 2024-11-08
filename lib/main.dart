import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:menuqr/app.dart';

import 'core/styles/styles.dart';

void main() {
  runApp(
    BlocProvider(
        create: (context) => ThemeBloc()..add(InitializeThemeEvent()),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, bool>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Menuqr',
          debugShowCheckedModeBanner: false,
          theme: state
              ? AppTheme(AppColor.darkColors).getTheme()
              : AppTheme(AppColor.lightColors).getTheme(),
          home: const App(),
        );
      },
    );
  }
}

