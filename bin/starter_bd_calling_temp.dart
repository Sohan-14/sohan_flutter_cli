import 'dart:io';
import 'package:args/args.dart';
import 'package:yaml_edit/yaml_edit.dart';

/// repo url
const String repoUrl ="https://github.com/Sohan-14/sohan_bd_calling_temp.git";
// template folder
const String tempFolder = "bd_calling_temp";

/// Define the folders to copy
final List<String> foldersToCopy = [
  // assets
  'assets/fonts',
  'assets/icons',
  'assets/images',

  // test
  'test',

  // app

  'lib/app/config',
  'lib/app/di',
  'lib/app/enums',
  'lib/app/error',
  'lib/app/extensions',
  'lib/app/localization',
  'lib/app/network',
  'lib/app/routes',
  'lib/app/storage',
  'lib/app/themes',
  'lib/app/utils',
  'lib/app/utils/device',
  'lib/app/utils/validators',
  'lib/app/widgets',

  // Presentation


  'lib/features/auth/controllers',
  'lib/features/auth/models',
  'lib/features/auth/views',
  'lib/features/auth/widgets',



  'lib/features/general/controllers',
  'lib/features/general/models',
  'lib/features/general/views',
  'lib/features/general/widgets',


  'lib/features/home/controllers',
  'lib/features/home/models',
  'lib/features/home/views',
  'lib/features/home/widgets',


  'lib/features/onboarding/controllers',
  'lib/features/onboarding/models',
  'lib/features/onboarding/views',
  'lib/features/onboarding/widgets',


  'lib/features/profile/controllers',
  'lib/features/profile/models',
  'lib/features/profile/views',
  'lib/features/onboarding/widgets',
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
  'flutter_svg': '^2.0.17',
  'pin_code_fields': '^8.0.1',
  'cached_network_image': '^3.4.1',
  'url_launcher': '^6.3.1',
  'fluttertoast': '^8.2.12',
};

// Define the folders and specific files to copy/replace
final List<String> filesToReplace = [
  "assets/fonts/Poppins-Bold.ttf",
  "assets/fonts/Poppins-Light.ttf",
  "assets/fonts/Poppins-Regular.ttf",
  "assets/fonts/Poppins-SemiBold.ttf",

  "assets/icons/back_icon.svg",
  "assets/icons/cloud_icon.svg",
  "assets/icons/edit_icon.svg",
  "assets/icons/email_icon.svg",
  "assets/icons/eye_close_icon.svg",
  "assets/icons/eye_open_icon.svg",
  "assets/icons/info_icon.svg",
  "assets/icons/location_icon.svg",
  "assets/icons/lock_icon.svg",
  "assets/icons/logout_icon.svg",
  "assets/icons/next_icon.svg",
  "assets/icons/privacy_icon.svg",
  "assets/icons/question_icon.svg",

  "assets/images/.gitkeep",

  // test file
  "test/widget_test.dart",

  // app files
  // app config files
  "lib/app/config/app_api_endpoints.dart",
  "lib/app/config/app_constants.dart",
  "lib/app/config/app_dark_colors.dart",
  "lib/app/config/app_icons.dart",
  "lib/app/config/app_images.dart",
  "lib/app/config/app_light_colors.dart",
  "lib/app/config/app_sizes.dart",
  "lib/app/config/app_strings.dart",
  // app di files
  "lib/app/di/app_bindings.dart",
  // app enums files
  "lib/app/enums/general_type.dart",
  "lib/app/enums/http_method.dart",
  "lib/app/enums/views_type.dart",
  // app error files
  "lib/app/error/.gitkeep",
  // app extensions files
  "lib/app/extensions/context_extensions.dart",
  "lib/app/extensions/date_time_extensions.dart",
  "lib/app/extensions/list_extensions.dart",
  "lib/app/extensions/number_extensions.dart",
  "lib/app/extensions/strings_extensions.dart",
  "lib/app/extensions/widget_extensions.dart",
  // app localization files
  "lib/app/localization/bn_bn.dart",
  "lib/app/localization/en_us.dart",
  "lib/app/localization/localization.dart",
  // app network files
  "lib/app/network/network_service.dart",
  // app routes files
  "lib/app/routes/app_routes.dart",
  "lib/app/routes/app_screens.dart",
  // app storage files
  "lib/app/storage/storage_service.dart",
  // app themes files
  "lib/app/themes/app_appbar_theme.dart",
  "lib/app/themes/app_bottom_nav_bar_theme.dart",
  "lib/app/themes/app_bottom_sheet_theme.dart",
  "lib/app/themes/app_card_theme.dart",
  "lib/app/themes/app_check_box_theme.dart",
  "lib/app/themes/app_chip_theme.dart",
  "lib/app/themes/app_dialogue_theme.dart",
  "lib/app/themes/app_elevated_btn_theme.dart",
  "lib/app/themes/app_expansion_tile_theme.dart",
  "lib/app/themes/app_floating_action_bar_theme.dart",
  "lib/app/themes/app_input_decoration_theme.dart",
  "lib/app/themes/app_nav_drawer_theme.dart",
  "lib/app/themes/app_outline_btn_theme.dart",
  "lib/app/themes/app_page_transition_theme.dart",
  "lib/app/themes/app_progress_indicator_theme.dart",
  "lib/app/themes/app_radio_theme.dart",
  "lib/app/themes/app_scroll_bar_theme.dart",
  "lib/app/themes/app_snack_bar_theme.dart",
  "lib/app/themes/app_switch_theme.dart",
  "lib/app/themes/app_tab_bar_theme.dart",
  "lib/app/themes/app_text_btn_theme.dart",
  "lib/app/themes/app_text_theme.dart",
  "lib/app/themes/app_tooltip_theme.dart",
  "lib/app/themes/dark_theme.dart",
  "lib/app/themes/light_theme.dart",
  "lib/app/themes/theme_manager.dart",
  "lib/app/themes/theme.dart",

  // Utilities
  "lib/app/utils/device/device_utility.dart",
  "lib/app/utils/validators/app_validation.dart",
  "lib/app/utils/helper_method.dart",
  "lib/app/utils/logger_utils.dart",
  "lib/app/utils/network_utils.dart",
  "lib/app/utils/permission_utils.dart",

  // Widgets
  "lib/app/widgets/accept_terms_condition_layout.dart",
  "lib/app/widgets/auth_screen_title_section.dart",  
  "lib/app/widgets/curved_bottom_border.dart",
  "lib/app/widgets/custom_app_background.dart",
  "lib/app/widgets/custom_app_bar.dart",
  "lib/app/widgets/custom_bottom_sheet.dart",
  "lib/app/widgets/custom_button.dart",
  "lib/app/widgets/custom_nav_bar.dart",
  "lib/app/widgets/custom_network_image.dart",
  "lib/app/widgets/custom_pin_code_text_field",
  "lib/app/widgets/custom_rich_text.dart",
  "lib/app/widgets/custom_rounded_inner_icon.dart",
  "lib/app/widgets/dotted_border.dart",
  "lib/app/widgets/input_layout.dart",
  "lib/app/widgets/rounded_profile_card.dart",
  "lib/app/widgets/row_end_text.dart",


  // Features files
  // Features auth
  "lib/features/auth/controllers/auth_controller.dart",
  "lib/features/auth/models/user.dart",
  "lib/features/auth/views/change_password_screen.dart",
  "lib/features/auth/views/forgot_password_screen.dart",
  "lib/features/auth/views/reset_password_screen.dart",
  "lib/features/auth/views/sign_in_screen.dart",
  "lib/features/auth/views/sign_up_screen.dart",
  "lib/features/auth/views/verify_email_screen.dart",
  "lib/features/auth/widgets/.gitkeep",
  "lib/features/auth/auth_binding.dart",

  // Features general
  "lib/features/general/controllers/general_controller.dart",
  "lib/features/general/models/.gitkeep",
  "lib/features/general/views/general_screen.dart",
  "lib/features/general/widgets/.gitkeep",
  "lib/features/general/general_binding.dart",

  // Features home
  "lib/features/home/controllers/home_controller.dart",
  "lib/features/home/controllers/navigation_controller.dart",
  "lib/features/home/models/.gitkeep",
  "lib/features/home/views/home_screen.dart",
  "lib/features/home/widgets/.gitkeep",
  "lib/features/home/home_binding.dart",

  // Features onboarding
  "lib/features/onboarding/controllers/splash_controller.dart",
  "lib/features/onboarding/models/.gitkeep",
  "lib/features/onboarding/views/splash_screen.dart",
  "lib/features/onboarding/widgets/.gitkeep",
  "lib/features/onboarding/onboarding_binding.dart",

  // Features profile
  "lib/features/profile/controllers/profile_controller.dart",
  "lib/features/profile/models/.gitkeep",
  "lib/features/profile/views/account_info_screen.dart",
  "lib/features/profile/views/profile_screen.dart",
  "lib/features/profile/widgets/.gitkeep",
  "lib/features/profile/profile_binding.dart",

  // main
  "lib/main.dart",
  // pubspec.yaml
  "pubspec.yaml",
  // analysis_options.yaml
  "analysis_options.yaml",
];

/// Main entry point of the CLI application.
///
/// This function handles the command-line arguments and decides which
/// operation to perform, such as `setup`.
///
/// Example usage:
/// ```bash
/// starter_temp_clean_getx setup
/// ```
void main(List<String> arguments) async {
  final parser =
      ArgParser()
        ..addCommand('setup')
        ..addCommand('version');
  final ArgResults argResults = parser.parse(arguments);

  if (argResults.command?.name == 'setup') {
    final proceed = await askConfirmation(
      "This will set up your Flutter project with predefined templates, folders, files, and added dependencies.\nFor cli version just simply run ✅ dart pub global activate sohan_flutter_cli ✅\nYour Files and folder might be replaced....\nDo you want to continue? (y/n)",
    );

    if (proceed) {
      await setupProject();
    } else {
      print("Setup aborted by user.");
    }
  } else if (argResults.command?.name == 'version') {
    printVersion();
  } else {
    print("Invalid command. Use: `starter_bd_calling_temp setup`");
  }
}

// Print the cli version
///
/// [printVersion]
void printVersion() {
  const cliVersion = '3.0.0';
  print("sohan_flutter_cli  version: $cliVersion");
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
    } else if (response?.toLowerCase() == 'n' ||
        response?.toLowerCase() == 'no') {
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
/// starter_temp_clean_getx setup
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
      print("Created .gitkeep file in: $to");
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
/// starter_temp_clean_getx setup
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
/// starter_temp_clean_getx setup
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
