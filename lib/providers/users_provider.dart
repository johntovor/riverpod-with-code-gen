import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../models/seller.dart';

part 'users_provider.g.dart';

@riverpod
class Users extends _$Users {
  @override
  Future<List<Seller>> build() async {
    return [];
  }

  Future<void> registerSeller(Seller seller) async {
    const String endpoint = "http://127.0.0.1:8000/accounts/seller-signup/";
    await http.post(
      Uri.parse(endpoint),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(seller.toJson()),
    );

    ref.invalidateSelf();
    await future;
  }
}

@riverpod
Future<List<Seller>> getSellers(GetSellersRef ref) async {
  const String endpoint = "http://127.0.0.1:8000/accounts/sellers-only/";
  final response = await http.get(
    Uri.parse(endpoint),
    headers: {"Content-Type": "application/json"},
  );
  final json = jsonDecode(response.body) as List;
  return json.map((data) => Seller.fromJson(data)).toList();
}
