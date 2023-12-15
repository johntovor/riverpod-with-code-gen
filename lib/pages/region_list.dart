import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/region.dart';
import '../providers/region_provider.dart';

class RegionListScreen extends ConsumerStatefulWidget {
  const RegionListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegionListScreenState();
}

class _RegionListScreenState extends ConsumerState<RegionListScreen> {
  @override
  Widget build(BuildContext context) {
    AsyncValue<List<Region>> futureData = ref.watch(regionsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Region List"),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(regionsProvider.future),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: futureData.when(
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return Card(
                  color: Colors.black54,
                  child: ListTile(
                    title: Text(item.name),
                    subtitle: Text('ID: ${item.id}'),
                    trailing: Text(item.date_added!.substring(0, 10)),
                  ),
                );
              },
            ),
            error: (error, stackTrace) => Text("Error: $error"),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
