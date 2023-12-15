import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/region.dart';
import '../providers/region_provider.dart';
import 'region_list.dart';

class UpdateRegionScreen extends ConsumerStatefulWidget {
  const UpdateRegionScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateRegionScreenState();
}

class _UpdateRegionScreenState extends ConsumerState<UpdateRegionScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.watch(regionListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Region"),
        centerTitle: true,
        elevation: 2.5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            TextField(
              controller: idController,
              keyboardType: TextInputType.number,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Region ID",
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Region Name",
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ref.read(regionListProvider.notifier).updateRegion(
                      Region(name: nameController.text),
                      int.parse(idController.text));
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const RegionListScreen(),
                    ),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: StadiumBorder(),
                minimumSize: Size(double.infinity, 50),
              ),
              child: const Text("Update Region"),
            ),
          ],
        ),
      ),
    );
  }
}
