
# Flutter Initial Setup Script

A Bash script to automate the installation and setup of Flutter SDK, its dependencies, and Android Studio on Debian-based systems like Ubuntu. This script ensures all necessary tools and configurations are properly installed to get started with Flutter development.

## Features

- Installs essential dependencies for Flutter and Dart SDKs.
- Downloads and configures the Flutter SDK.
- Installs Android Studio and accepts Android SDK licenses.
- Verifies the installation using `flutter doctor` and performs a detailed test with `flutter run --verbose`.

## Prerequisites

- A Debian-based Linux system (e.g., Ubuntu 20.04 or newer).
- Internet access for downloading required packages and tools.
- Run the script as `root` or using `sudo`.

## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/92username/flutter-initial-setup.git
   cd flutter-initial-setup
   ```

2. Make the script executable:
   ```bash
   chmod +x setup-flutter.sh
   ```

3. Run the script:
   ```bash
   sudo ./setup-flutter.sh
   ```

4. Follow the on-screen instructions. The script will:
   - Update your system.
   - Install dependencies.
   - Download and set up Flutter and Android Studio.
   - Verify the installation and provide feedback.

## Output and Logs

The script uses:

- `flutter doctor`: To check for missing dependencies and configuration issues.
- `flutter run --verbose`: To perform a detailed test of the Flutter setup.

If there are any issues, review the logs provided in the terminal for troubleshooting.

## Notes

- Ensure you have at least **10 GB of free disk space** before running the script.
- You may need to restart your terminal or source your `.bashrc` to apply environment variable changes.

## License

This project is licensed under the **GNU GPL 3.0**. See the `LICENSE` file for more details.

---

