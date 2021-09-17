import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/l10n/l10n.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/settings/settings.dart';

/// {@template settings_page}
/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the `SettingsBloc` is updated and
/// widgets that listen to the `SettingsBloc` are rebuilt.
/// {@endtemplate}
class SettingsPage extends StatelessWidget {
  /// {@macro settings_page}
  const SettingsPage({Key? key}) : super(key: key);

  /// Page's named route.
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: ThemeModeDropdown(),
      ),
    );
  }
}

/// {@template theme_mode_dropdown}
/// When a user selects a theme from the dropdown list, the
/// `SettingsBloc` is updated, which rebuilds the `MaterialApp`.
/// {@endtemplate}
class ThemeModeDropdown extends StatelessWidget {
  /// {@macro theme_mode_dropdown}
  const ThemeModeDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SettingsBloc, SettingsState, ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, state) {
        return DropdownButton<ThemeMode>(
          // Read the selected themeMode from the controller
          value: state,
          // Add `SettingsThemeModeChanged` event to `SettingsBloc`
          // any time the user selects a theme.
          onChanged: (theme) {
            final event = SettingsThemeModeChanged(theme ?? ThemeMode.system);
            context.read<SettingsBloc>().add(event);
          },
          items: [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text(context.l10n.systemTheme),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text(context.l10n.lightTheme),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text(context.l10n.darkTheme),
            )
          ],
        );
      },
    );
  }
}
