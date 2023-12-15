// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSellersHash() => r'0d4eb68e67473e35beacdda4bdd1ede67872a31d';

/// See also [getSellers].
@ProviderFor(getSellers)
final getSellersProvider = AutoDisposeFutureProvider<List<Seller>>.internal(
  getSellers,
  name: r'getSellersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getSellersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetSellersRef = AutoDisposeFutureProviderRef<List<Seller>>;
String _$usersHash() => r'7de840ac6432b81adcb7dc0aba2a9dd5f0b0de9d';

/// See also [Users].
@ProviderFor(Users)
final usersProvider =
    AutoDisposeAsyncNotifierProvider<Users, List<Seller>>.internal(
  Users.new,
  name: r'usersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Users = AutoDisposeAsyncNotifier<List<Seller>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
