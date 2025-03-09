import 'dart:io';
import 'package:args/args.dart';
import 'package:yaml_edit/yaml_edit.dart';

const String repoUrl =
    "https://github.com/Sohan-14/sohan_starter_temp_clean_getx.git";
const String tempFolder = "sohan_starter_temp_clean_getx";

// Define the folders to copy
final List<String> foldersToCopy = [
  // assets
  'assets/fonts',
  'assets/images',
  'assets/icons',

  // test
  'test',

  // Core
  'lib/core/config',
  'lib/core/di',
  'lib/core/enums',
  'lib/core/error',
  'lib/core/extensions',
  'lib/core/localization',
  'lib/core/network',
  'lib/core/routes',
  'lib/core/storage',
  'lib/core/themes',
  'lib/core/utils',
  'lib/core/utils/device',
  'lib/core/utils/validators',
  'lib/core/widgets',

  // Data
  'lib/data/data_sources',
  'lib/data/data_sources/remote',
  'lib/data/mapper',
  'lib/data/models',
  'lib/data/repositories',

  // Domain
  'lib/domain/entities',
  'lib/domain/repositories',
  'lib/domain/use_cases',

  // Presentation
  'lib/presentation/bindings',
  'lib/presentation/controllers',
  'lib/presentation/screens',
  'lib/presentation/widgets',
];

// Define dependencies to add
final Map<String, String> dependenciesToAdd = {
  'get': '^4.7.2',
  'get_storage': '^2.1.1',
  'intl': '^0.20.2',
  'connectivity_plus': '^6.1.3',
  'permission_handler': '^11.4.0',
  'logger': '^2.5.0',
  'dio': '^5.8.0+1',
};

// Define the folders and specific files to copy/replace
final List<String> filesToReplace = [
  "assets/fonts/.gitkeep",
  "assets/icons/.gitkeep",
  "assets/images/.gitkeep",

  // test file
  "test/widget_test.dart",

  // Core files
  "lib/core/config/app_api_endpoints.dart",
  "lib/core/config/app_constants.dart",
  "lib/core/config/app_dark_colors.dart",
  "lib/core/config/app_icons.dart",
  "lib/core/config/app_images.dart",
  "lib/core/config/app_light_colors.dart",
  "lib/core/config/app_sizes.dart",
  "lib/core/config/app_strings.dart",
  "lib/core/di/app_bindings.dart",
  "lib/core/enums/http_method.dart",
  "lib/core/error/.gitkeep",
  "lib/core/extensions/context_extensions.dart",
  "lib/core/extensions/date_time_extensions.dart",
  "lib/core/extensions/list_extensions.dart",
  "lib/core/extensions/number_extensions.dart",
  "lib/core/extensions/strings_extensions.dart",
  "lib/core/extensions/theme_extensions.dart",
  "lib/core/extensions/widget_extensions.dart",
  "lib/core/localization/bn_bn.dart",
  "lib/core/localization/en_us.dart",
  "lib/core/localization/localization.dart",
  "lib/core/network/network_service.dart",
  "lib/core/routes/app_routes.dart",
  "lib/core/routes/app_screens.dart",
  "lib/core/storage/storage_service.dart",
  "lib/core/themes/app_appbar_theme.dart",
  "lib/core/themes/app_bottom_nav_bar_theme.dart",
  "lib/core/themes/app_bottom_sheet_theme.dart",
  "lib/core/themes/app_card_theme.dart",
  "lib/core/themes/app_check_box_theme.dart",
  "lib/core/themes/app_chip_theme.dart",
  "lib/core/themes/app_dialogue_theme.dart",
  "lib/core/themes/app_elevated_btn_theme.dart",
  "lib/core/themes/app_expansion_tile_theme.dart",
  "lib/core/themes/app_floating_action_bar_theme.dart",
  "lib/core/themes/app_floating_action_bar_theme.dart",
  "lib/core/themes/app_input_decoration_theme.dart",
  "lib/core/themes/app_nav_drawer_theme.dart",
  "lib/core/themes/app_outline_btn_theme.dart",
  "lib/core/themes/app_page_transition_theme.dart",
  "lib/core/themes/app_progress_indicator_theme.dart",
  "lib/core/themes/app_radio_theme.dart",
  "lib/core/themes/app_scroll_bar_theme.dart",
  "lib/core/themes/app_snack_bar_theme.dart",
  "lib/core/themes/app_switch_theme.dart",
  "lib/core/themes/app_tab_bar_theme.dart",
  "lib/core/themes/app_text_btn_theme.dart",
  "lib/core/themes/app_text_theme.dart",
  "lib/core/themes/app_tooltip_theme.dart",
  "lib/core/themes/dark_theme.dart",
  "lib/core/themes/light_theme.dart",
  "lib/core/themes/theme_manager.dart",
  "lib/core/themes/theme.dart",

  // Utilities
  "lib/core/utils/device/device_utility.dart",
  "lib/core/utils/validators/app_validation.dart",
  "lib/core/utils/logger_utils.dart",
  "lib/core/utils/network_utils.dart",
  "lib/core/utils/permission_utils.dart",

  // Widgets
  "lib/core/widgets/.gitkeep",

  // Data files
  "lib/data/data_sources/remote/remote_data_source_impl.dart",
  "lib/data/data_sources/remote/remote_data_source.dart",
  "lib/data/mapper/sample_mapper.dart",
  "lib/data/models/sample_dto.dart",
  "lib/data/repositories/sample_repository_impl.dart",

  // Domain files
  "lib/domain/entities/sample.dart",
  "lib/domain/repositories/sample_repository.dart",
  "lib/domain/use_cases/get_sample_data_use_cases.dart",

  // Presentation files
  "lib/presentation/bindings/localization_bindings.dart",
  "lib/presentation/bindings/splash_bindings.dart",
  "lib/presentation/bindings/test_bindings.dart",
  "lib/presentation/controllers/localization_controller.dart",
  "lib/presentation/controllers/sample_controller.dart",
  "lib/presentation/controllers/splash_controller.dart",
  "lib/presentation/screens/splash_screen.dart",
  "lib/presentation/screens/test_screen.dart",
  "lib/presentation/widgets/.gitkeep",

  // Main file and pubspec.yaml
  "lib/main.dart",
  "pubspec.yaml",
];

/// Main entry point of the CLI application.
///
/// This function handles the command-line arguments and decides which
/// operation to perform, such as `setup`.
///
/// Example usage:
/// ```bash
/// sohan_starter_temp_clean_getx setup
/// ```
void main(List<String> arguments) async {
  final parser = ArgParser()..addCommand('setup');
  final ArgResults argResults = parser.parse(arguments);

if (argResults.command?.name == 'setup') {
    final proceed = await askConfirmation(
        "This will set up your Flutter project with predefined templates, folders, files, and added dependencies. Your Files and folder might be replaced.... Do you want to continue? (y/n)");

    if (proceed) {
      await setupProject();
    } else {
      print("Setup aborted by user.");
    }
  } else {
    print("Invalid command. Use: `sohan_starter_temp_clean_getx setup`");
  }
}


/// Asking for confirmation from user
///
/// Throws a [SetupException] if the setup fails.

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

/// Sets up a Flutter project with predefined templates, folders, files, and dependencies.
///
/// This function handles the process of cloning a repository, replacing selected
/// files, and updating `pubspec.yaml` with necessary dependencies.
///
/// Throws a [SetupException] if the setup fails.

Future<void> setupProject() async {
  final String currentDir = Directory.current.path;

  print("Cloning Flutter Starter template...");
  await Process.run('git', ['clone', repoUrl, tempFolder]);

  final tempPath = "$currentDir/$tempFolder";
  if (!Directory(tempPath).existsSync()) {
    print("Cloning failed. Please check your internet connection.");
    return;
  }

  print("Replacing folder structure...");
  for (String filePath in filesToReplace) {
    await replaceFile("$tempPath/$filePath", "$currentDir/$filePath");
  }

  print("Updating pubspec.yaml...");
  await updatePubspec("$currentDir/pubspec.yaml");

  print("Running flutter pub get...");
  await runFlutterPubGet();

  print("Cleaning up...");
  await Directory(tempPath).delete(recursive: true);

  print("Setup complete! Your Flutter project is now updated.");
}

/// This function replace the files
/// operation to perform, such as `replace`.
///
/// Example usage:
/// ```bash
/// sohan_starter_temp_clean_getx setup
/// ```
Future<void> replaceFile(String from, String to) async {
  final sourceFile = File(from);

  if (!sourceFile.existsSync()) {
    if (from.endsWith('.gitkeep')) {
      final destinationDir = Directory(to).parent;
      if (!destinationDir.existsSync()) {
        print("Creating directory: ${destinationDir.path}");
        destinationDir.createSync(recursive: true);
      }
      File(to).createSync();
      print("📂 Created .gitkeep file in: $to");
    } else {
      print("File not found: $from");
    }
    return;
  }

  final destinationFile = File(to);

  final destinationDir = Directory(to).parent;
  if (!destinationDir.existsSync()) {
    print("Creating directory: ${destinationDir.path}");
    destinationDir.createSync(recursive: true);
  }

  if (destinationFile.existsSync()) {
    print("Replacing file: $to");
  } else {
    print("Creating new file: $to");
  }

  await sourceFile.copy(to);

  print("File replaced: $to");
}

/// This function update pubspec.yaml file
/// operation to perform, such as `update`.
///
/// Example usage:
/// ```bash
/// sohan_starter_temp_clean_getx setup
/// ```
///
Future<void> updatePubspec(String pubspecPath) async {
  final pubspecFile = File(pubspecPath);
  if (!pubspecFile.existsSync()) {
    print("pubspec.yaml not found!");
    return;
  }

  final content = pubspecFile.readAsStringSync();
  final editor = YamlEditor(content);

  dependenciesToAdd.forEach((package, version) {
    editor.update(['dependencies', package], version);
  });

  pubspecFile.writeAsStringSync(editor.toString());
  print("✅ Dependencies updated in pubspec.yaml.");
}

/// This function run the flutter pub get to sync the dependencies
/// operation to perform, such as `sync`.
///
/// Example usage:
/// ```bash
/// sohan_starter_temp_clean_getx setup
/// ```
///
Future<void> runFlutterPubGet() async {
  final result = await Process.run('flutter', ['pub', 'get']);
  if (result.exitCode == 0) {
    print("flutter pub get completed successfully.");
  } else {
    print("Failed to run flutter pub get. Please check your environment.");
  }
}
