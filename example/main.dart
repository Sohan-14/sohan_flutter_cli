// example/main.dart
import 'dart:io';
import 'package:args/args.dart';
import '../bin/sohan_flutter_cli.dart';

/// The entry point of the example that demonstrates the use of the CLI.
///
/// It accepts command-line arguments to either set up a Flutter project
/// using predefined templates or display the current version of the CLI tool.
void main(List<String> arguments) async {
  // Check if the user provided any arguments
  if (arguments.isEmpty) {
    print('No command provided. Usage: setup or version');
    exit(1);
  }

  // Parse the command-line arguments
  final parser = ArgParser()..addCommand('setup')..addCommand('version');
  final ArgResults argResults = parser.parse(arguments);

  // Run setup command if the 'setup' command is provided
  if (argResults.command?.name == 'setup') {
    print('Starting the setup process...');
    
    /// Asking the user for confirmation to proceed with the setup process.
    final proceed = await askConfirmation(
        "This will set up your Flutter project with predefined templates, folders, files, and added dependencies.\nDo you want to continue? (y/n)");

    if (proceed) {
      await setupProject();
      print('Flutter project setup completed successfully!');
    } else {
      print('Setup aborted by user.');
    }
  } 
  // Show the version command if the 'version' command is provided
  else if (argResults.command?.name == 'version') {
    printVersion();
  } 
  // Display an error message for invalid commands
  else {
    print('Invalid command. Use "setup" to set up or "version" to show the CLI version.');
  }
}

/// Prints the version of the `sohan_flutter_cli` tool.
///
/// This command shows the current version of the CLI tool. For example:
/// ```bash
/// starter_temp_clean_getx version
/// ```
void printVersion() {
  const cliVersion = '1.3.2';  // Your current CLI version
  print("sohan_flutter_cli version: $cliVersion");
}

/// Asks for confirmation from the user before performing the setup.
///
/// The [prompt] parameter is the message shown to the user to confirm
/// the action.
///
/// Returns true if the user confirms the action, otherwise returns false.
///
/// Example usage:
/// ```dart
/// final proceed = await askConfirmation("Do you want to continue with the setup?");
/// ```
Future<bool> askConfirmation(String prompt) async {
  while (true) {
    stdout.write("$prompt ");
    String? response = stdin.readLineSync()?.toLowerCase();

    if (response?.toLowerCase() == 'y' || response?.toLowerCase() == 'yes') {
      return true;
    } else if (response?.toLowerCase() == 'n' || response?.toLowerCase() == 'no') {
      return false;
    } else {
      print("Invalid input. Please enter 'y' or 'n'.");
    }
  }
}
