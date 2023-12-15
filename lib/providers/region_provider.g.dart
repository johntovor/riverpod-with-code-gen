// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$regionsHash() => r'8dbc70bf6d5b956ec36cca8d94224086444103e8';

/// See also [regions].
@ProviderFor(regions)
final regionsProvider = AutoDisposeFutureProvider<List<Region>>.internal(
  regions,
  name: r'regionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$regionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RegionsRef = AutoDisposeFutureProviderRef<List<Region>>;
String _$singleRegionHash() => r'a83334a5044b952e683fd84b8f3eba2d64da0640';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [singleRegion].
@ProviderFor(singleRegion)
const singleRegionProvider = SingleRegionFamily();

/// See also [singleRegion].
class SingleRegionFamily extends Family<AsyncValue<Region>> {
  /// See also [singleRegion].
  const SingleRegionFamily();

  /// See also [singleRegion].
  SingleRegionProvider call(
    int id,
  ) {
    return SingleRegionProvider(
      id,
    );
  }

  @override
  SingleRegionProvider getProviderOverride(
    covariant SingleRegionProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'singleRegionProvider';
}

/// See also [singleRegion].
class SingleRegionProvider extends AutoDisposeFutureProvider<Region> {
  /// See also [singleRegion].
  SingleRegionProvider(
    int id,
  ) : this._internal(
          (ref) => singleRegion(
            ref as SingleRegionRef,
            id,
          ),
          from: singleRegionProvider,
          name: r'singleRegionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleRegionHash,
          dependencies: SingleRegionFamily._dependencies,
          allTransitiveDependencies:
              SingleRegionFamily._allTransitiveDependencies,
          id: id,
        );

  SingleRegionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<Region> Function(SingleRegionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleRegionProvider._internal(
        (ref) => create(ref as SingleRegionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Region> createElement() {
    return _SingleRegionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleRegionProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleRegionRef on AutoDisposeFutureProviderRef<Region> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SingleRegionProviderElement
    extends AutoDisposeFutureProviderElement<Region> with SingleRegionRef {
  _SingleRegionProviderElement(super.provider);

  @override
  int get id => (origin as SingleRegionProvider).id;
}

String _$regionListHash() => r'281b13cca631a4c7f6e8359a8cf5df0b88dcc6e0';

/// See also [RegionList].
@ProviderFor(RegionList)
final regionListProvider =
    AutoDisposeAsyncNotifierProvider<RegionList, List<Region>>.internal(
  RegionList.new,
  name: r'regionListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$regionListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegionList = AutoDisposeAsyncNotifier<List<Region>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
