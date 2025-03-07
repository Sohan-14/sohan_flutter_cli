### A sample command-line application

# Flutter CLI Tool for Project Setup

This CLI tool is designed to simplify the process of integrating a custom Flutter starter template into an existing Flutter project. It automates tasks like replacing specific files, adding necessary dependencies, and syncing them using `flutter pub get`.

## Features

- **Clone Template Repository**: Clones a pre-defined starter template from a GitHub repository.
- **Replace Files & Folders**: Replaces or creates specific files and folders in the user's project with the ones from the template.
- **Update `pubspec.yaml`**: Automatically adds necessary dependencies to the project's `pubspec.yaml` file.
- **Run `flutter pub get`**: Syncs the new dependencies by running `flutter pub get` to ensure that all dependencies are up to date.
- **Support for `.gitkeep` Files**: Automatically creates `.gitkeep` files in empty directories to ensure they are tracked by Git.
- **Project Customization**: Allows you to select which specific files and folders from the template you want to replace or add in your project.

## How It Works

1. **Cloning the Template**: The CLI tool clones the starter template repository from GitHub.
2. **Replacing Files**: Based on the user's selection, the tool replaces or creates specified files and folders in the target Flutter project directory.
3. **Updating Dependencies**: The tool reads the `pubspec.yaml` of the user's Flutter project and updates it with necessary dependencies (if they are not already present).
4. **Syncing Dependencies**: Once dependencies are updated, the tool runs `flutter pub get` to ensure all dependencies are synchronized.
5. **Cleaning Up**: After completing the setup, the tool removes the cloned template folder and any temporary files.

## Prerequisites

Before using this tool, make sure you have the following installed:

- **Flutter**: Ensure that Flutter SDK is installed and available in your system path.
- **Dart**: The tool is written in Dart, so make sure Dart SDK is installed as well.


## Installation

To install this CLI tool globally, run:
    **dart pub global activate sohan_flutter_cli**



## Usage

Once installed, you can run the following command to set up your Flutter project:
    **sohan_flutter_cli setup**

