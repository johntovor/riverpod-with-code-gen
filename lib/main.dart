import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pages/activity_page.dart';
import 'pages/add_region.dart';
import 'pages/delete_region.dart';
import 'pages/region_list.dart';
import 'pages/register_seller.dart';
import 'pages/sellers_screen.dart';
import 'pages/single_region.dart';
import 'pages/update_region.dart';

part 'main.g.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

@riverpod
String helloWorld(HelloWorldRef ref) {
  return "Hello Riverpod World";
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Mastery With Code Generation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(helloWorldProvider);
    return Scaffold(
      appBar: AppBar(
          title: const Text("Riverpod Code Generation"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(value),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ActivityScreen(),
                  ),
                );
              },
              child: const Text("Activity Screen"),
            ),
            // const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddRegionScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text("Add Region"),
            ),
            // const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegionListScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text("Region List"),
            ),
            // const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SingleRegionScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text("Single Region"),
            ),
            // const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UpdateRegionScreen(),
                  ),
                );
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text("Update Region"),
            ),
            // const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DeleteRegionScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Delete Region"),
            ),
            // const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterSellerScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              child: const Text("Register Seller"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SellersScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 59, 216)),
              child: const Text("Sellers List"),
            ),
          ],
        ),
      ),
    );
  }
}
