import 'package:flutter/material.dart';

/// {@template sample_item_details_page}
/// Displays detailed information about a `SampleItem`.
/// {@endtemplate}
class SampleItemDetailsPage extends StatelessWidget {
  /// {@macro sample_item_details_page}
  const SampleItemDetailsPage({Key? key}) : super(key: key);

  /// Page's named route.
  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
