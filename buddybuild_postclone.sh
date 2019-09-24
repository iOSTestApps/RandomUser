#!/bin/bash

echo "Changing SCM settings..."

defaults write com.apple.dt.xcodebuild IDEPackageSupportUseBuiltinSCM -bool YES
defaults write com.apple.dt.Xcode IDEPackageSupportUseBuiltinSCM -bool YES

echo "Resolving dependencies..."

xcodebuild -resolvePackageDependencies
