import 'dart:developer';

import 'package:riverpod/riverpod.dart';

/// Provider behavior observer.
class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log(
      'provider: ${provider.name ?? provider.runtimeType}\n'
      'newValue": "$newValue\n',
    );
  }
}
