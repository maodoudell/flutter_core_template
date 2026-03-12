#!/bin/bash

# Navigate to the Flutter project directory
cd "$(dirname "$0")"
#flutter clean
flutter pub get

dart run build_runner build --delete-conflicting-outputs

echo "Build Runner Successfully!"

#flutter build appbundle --flavor prod --target lib/main_prod.dart
