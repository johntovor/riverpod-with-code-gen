import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/region.dart';
import '../providers/region_provider.dart';
import 'region_list.dart';

class AddRegionScreen extends ConsumerStatefulWidget {
  const AddRegionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddRegionScreenState();
}

class _AddRegionScreenState extends ConsumerState<AddRegionScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.watch(regionListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Region"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Region name"),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(regionListProvider.notifier)
                      .addRegion(Region(name: nameController.text));
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const RegionListScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(50.0),
                  // ),
                  shape: const StadiumBorder(),
                  minimumSize: const Size(double.infinity, 49.0),
                ),
                child: const Text("Add Region"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
