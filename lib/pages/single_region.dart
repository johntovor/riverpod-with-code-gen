import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/region.dart';
import '../providers/region_provider.dart';

class SingleRegionScreen extends ConsumerWidget {
  const SingleRegionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<Region> providerValue = ref.watch(singleRegionProvider(14));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Region"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: providerValue.when(
              data: (data) => ListTile(
                    title: Text(data.name),
                    subtitle: Text(data.date_added!.substring(0, 10)),
                    trailing: CircleAvatar(
                      child: Text(data.id.toString()),
                    ),
                  ),
              error: (error, stackTrace) => Text("Error: $error"),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  )),
        ),
      ),
    );
  }
}
