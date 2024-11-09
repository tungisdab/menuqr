import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/styles/styles.dart';
import 'features/auth/presentation/login/login.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     BlocBuilder<ThemeBloc, bool>(
      //       builder: (context, state) {
      //         return Switch(
      //             value: state,
      //             onChanged: (bool value) {
      //               context.read<ThemeBloc>().add(ChangeThemeEvent());
      //             });
      //       },
      //     )
      //   ],
      // ),
      body: const SafeArea(
        child: LoginScreen(),
      ),
    );
  }
}