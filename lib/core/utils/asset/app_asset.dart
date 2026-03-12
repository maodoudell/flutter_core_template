class AppAsset {
  AppAsset._shareInstance();
  static final AppAsset _shared = AppAsset._shareInstance();
  factory AppAsset.instance() => _shared;
}
