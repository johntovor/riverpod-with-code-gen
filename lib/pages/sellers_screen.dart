import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/users_provider.dart';

class SellersScreen extends ConsumerWidget {
  const SellersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerValue = ref.watch(getSellersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sellers List"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: providerValue.when(
          data: (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListTile(
                leading: CircleAvatar(child: Text("${index + 1}")),
                title: Text('${item.full_name}'),
                subtitle: Text('${item.email}'),
                trailing: Text('${item.phone_number}'),
              );
            },
          ),
          error: (error, stack) => Text('An error: $error has occurred'),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
