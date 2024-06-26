import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nerd_eg_hiring_task/features/auth/views/sign_in_view.dart';
import 'package:nerd_eg_hiring_task/features/recipes/presentation/bloc/recipes_bloc.dart';
import 'package:nerd_eg_hiring_task/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipeBloc(),
      child: MaterialApp(
        title: 'NERD-EG Hiring task',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const SignInView(),
      ),
    );
  }
}
