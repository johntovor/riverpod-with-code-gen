import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/activity.dart';
import '../providers/activity_provider.dart';

class ActivityScreen extends ConsumerWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Activity> value = ref.watch(activityProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity Screen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => ref.refresh(activityProvider.future),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(activityProvider.future),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: value.when(
                data: (data) => ListView(
                      children: [
                        ListTile(
                          title: Text(data.activity),
                          subtitle: Text(
                              "Type: ${data.type} | Participants: ${data.participants}"),
                          trailing: Text("\$${data.price}"),
                        ),
                      ],
                    ),
                error: ((error, stackTrace) => Text("Error: $error")),
                loading: () => const CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
