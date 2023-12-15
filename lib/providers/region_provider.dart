import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../models/region.dart';

part 'region_provider.g.dart';

@riverpod
class RegionList extends _$RegionList {
  @override
  Future<List<Region>> build() async {
    return [];
  }

  Future<void> addRegion(Region region) async {
    const String endpoint =
        "http://127.0.0.1:8000/locations/region/create/";
    await http.post(
      Uri.parse(endpoint),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        region.toJson(),
      ),
    );

    ref.invalidateSelf();
    await future;
  }

  Future<void> updateRegion(Region region, int id) async {
    final endpoint = "http://127.0.0.1:8000/locations/region/update/$id/";
    await http.put(
      Uri.parse(endpoint),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(
        region.toJson(),
      ),
    );

    ref.invalidateSelf();
    await future;
  }

  Future<void> deleteRegion(int id) async {
    final endpoint = "http://127.0.0.1:8000/locations/region/delete/$id/";
    await http.delete(
      Uri.parse(endpoint),
      headers: {"Content-Type": "application/json"},
    );

    ref.invalidateSelf();
    await future;
  }
}

@riverpod
Future<List<Region>> regions(RegionsRef ref) async {
  const String endpoint =
      "http://127.0.0.1:8000/locations/region/list-all/";
  final response = await http.get(Uri.parse(endpoint));
  final json = jsonDecode(response.body) as List;
  return json.map((e) => Region.fromJson(e)).toList();
}

@riverpod
Future<Region> singleRegion(SingleRegionRef ref, int id) async {
  final String endpoint = "http://127.0.0.1:8000/locations/region/list/$id";
  final response = await http.get(Uri.parse(endpoint));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Region.fromJson(json);
}
