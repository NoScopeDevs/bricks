import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/src/sample_feature/sample_feature.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/src/settings/settings.dart';

/// {@template app}
/// The widget that handles the dependency injection of your application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SettingsBloc(),
        ),
      ],
      child: const AppView(),
    );
  }
}

/// {@template app_view}
/// The widget that configures your application.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Providing a `restorationScopeId` allows the `Navigator` built by the
      // `MaterialApp` to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',
      // Provide the generated AppLocalizations to the `MaterialApp`. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code.
      ],
      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // `SettingsBloc` to display the correct theme.
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: context.select((SettingsBloc bloc) => bloc.state.themeMode),

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case SettingsPage.routeName:
                return const SettingsPage();
              case SampleItemDetailsPage.routeName:
                return const SampleItemDetailsPage();
              case SampleItemListPage.routeName:
              default:
                return const SampleItemListPage();
            }
          },
        );
      },
    );
  }
}
