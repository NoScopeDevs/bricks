import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/l10n/l10n.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/settings/settings.dart';

/// {@template settings_page}
/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the `SettingsNotifier` is updated and
/// widgets that listen to the `SettingsNotifier` are rebuilt.
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
/// `SettingsNotifier` is updated, which rebuilds the `MaterialApp`.
/// {@endtemplate}
class ThemeModeDropdown extends ConsumerWidget {
  /// {@macro theme_mode_dropdown}
  const ThemeModeDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(settingsProvider).themeMode;
    return DropdownButton<ThemeMode>(
      // Read the selected `themeMode` from the `provider`.
      value: themeMode,
      // Calls `changeThemeMode` method from `SettingsNotifier`
      // any time the user selects a theme.
      onChanged: (theme) {
        ref.read(settingsProvider.notifier).changeThemeMode(theme);
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
  }
}
