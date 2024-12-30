#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root."
  exit
fi

echo "Updating the system..."
sudo apt update && sudo apt upgrade -y

echo "Installing essential dependencies..."
sudo apt install -y curl wget git unzip cmake ninja-build libgtk-3-dev libblkid-dev

echo "Downloading the Flutter SDK..."
FLUTTER_URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.0-stable.tar.xz"
wget -O flutter.tar.xz $FLUTTER_URL
tar -xf flutter.tar.xz -C /opt/
rm flutter.tar.xz
export PATH="$PATH:/opt/flutter/bin"

echo "Downloading and installing Android Studio..."
ANDROID_STUDIO_URL="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.2.1.12/android-studio-2024.2.1.12-linux.tar.gz"
wget -O android-studio.tar.gz $ANDROID_STUDIO_URL
tar -xzf android-studio.tar.gz -C /opt/
rm android-studio.tar.gz
echo "export PATH=\$PATH:/opt/android-studio/bin" >> ~/.bashrc
source ~/.bashrc

echo "Accepting Android SDK licenses..."
flutter doctor --android-licenses

echo "Running flutter doctor to verify the installation..."
flutter doctor

echo "Running a detailed check with flutter run --verbose..."
flutter run --verbose || {
  echo "Some issues were detected. Please review the log above for details."
  exit 1
}

echo "Installation verified successfully! Flutter is ready to use."

