## A simple command-line application

##### This command will replace your files if already exists otherwise create new

Active cli globally and if need to update run this command


    dart pub global activate sohan_flutter_cli


On your root directory of the flutter starter project run this command to get my starter package files and folders

    starter_temp_clean_getx setup

# Flutter CLI Tool for Project Setup

This CLI tool is designed to simplify the process of integrating a custom Flutter starter template into an existing Flutter project. It automates tasks like replacing specific files, adding necessary dependencies, and syncing them using `flutter pub get`.

## Features

- **Clone Template Repository**: Clones a pre-defined starter template from a GitHub repository.
- **Replace Files & Folders**: Replaces or creates specific files and folders in the user's project with the ones from the template.
- **Update `pubspec.yaml`**: Automatically adds necessary dependencies to the project's `pubspec.yaml` file.
- **Run `flutter pub get`**: Syncs the new dependencies by running `flutter pub get` to ensure that all dependencies are up to date.
- **Support for `.gitkeep` Files**: Automatically creates `.gitkeep` files in empty directories to ensure they are tracked by Git.


## How It Works
1. **Cloning the Template**: The CLI tool clones the starter template repository from GitHub.
2. **Replacing Files**: the tool replaces or creates specified files and folders in the target Flutter project directory.
3. **Updating Dependencies**: The tool reads the `pubspec.yaml` of the user's Flutter project and updates it with necessary dependencies.
4. **Syncing Dependencies**: Once dependencies are updated, the tool runs `flutter pub get` to ensure all dependencies are synchronized.
5. **Cleaning Up**: After completing the setup, the tool removes the cloned template folder and any temporary files.

## Prerequisites

Before using this tool, make sure you have the following installed:

- **Flutter**: Ensure that Flutter SDK is installed and available in your system path.
- **Dart**: The tool is written in Dart, so make sure Dart SDK is installed as well.


## Installation

To install this CLI tool globally, run:

    dart pub global activate sohan_flutter_cli



## Usage

Once installed, you can run the following command to set up your Empty Flutter project:

    starter_temp_clean_getx setup



# Project Folder Structure
##### Below folders and files i will create, modify or replace


    │
    ├── assets 
    │   │
    │   ├── fonts    
    │   │   
    │   ├── ├── .gitkeep 
    │   │   
    │   ├── icons   
    │   │     
    │   ├── ├── back_icon.svg
    │   ├── ├── cloud_icon.svg
    │   ├── ├── edit_icon.svg
    │   ├── ├── email_icon.svg
    │   ├── ├── eye_close_icon.svg
    │   ├── ├── eye_open_icon.svg
    │   ├── ├── info_icon.svg
    │   ├── ├── location_icon.svg
    │   ├── ├── lock_icon.svg
    │   ├── ├── logout_icon.svg
    │   ├── ├── next_icon.svg
    │   ├── ├── privacy_icon.svg
    │   ├── ├── question_icon.svg
    │   │  
    │   ├── images  
    │   │   
    │   ├── ├── .gitkeep   
    │   │ 
    │   │     
    ├── lib 
    │   │ 
    │   │    
    │   ├── core  
    │   │   │ 
    │   │   │  
    │   ├── ├── config
    │   │   │
    │   ├── ├── ├── app_api_endpoints.dart
    │   ├── ├── ├── app_constants.dart
    │   ├── ├── ├── app_dark_colors.dart
    │   ├── ├── ├── app_icons.dart
    │   ├── ├── ├── app_images.dart
    │   ├── ├── ├── app_light_colors.dart
    │   ├── ├── ├── app_sizes.dart
    │   ├── ├── ├── app_strings.dart
    │   │   │
    │   ├── ├── di
    │   │   │   
    │   ├── ├── ├── app_bindings.dart
    │   │   │   
    │   ├── ├── enums
    │   │   │   
    │   ├── ├── ├── general_type.dart
    │   ├── ├── ├── http_method.dart
    │   │   │   
    │   ├── ├── error
    │   │   │    
    │   ├── ├── ├── .gitkeep
    │   │   │    
    │   ├── ├── extensions
    │   │   │   
    │   ├── ├── ├── context_extensions.dart
    │   ├── ├── ├── date_time_extensions.dart
    │   ├── ├── ├── list_extensions.dart
    │   ├── ├── ├── number_extensions.dart
    │   ├── ├── ├── strings_extensions.dart
    │   ├── ├── ├── widget_extensions.dart
    │   │   │   
    │   ├── ├── localization
    │   │   │   
    │   ├── ├── ├── bn_bn.dart
    │   ├── ├── ├── en_us.dart
    │   ├── ├── ├── localization.dart
    │   │   │   
    │   ├── ├── network
    │   │   │   
    │   ├── ├── ├── network_service.dart
    │   │   │   
    │   ├── ├── routes
    │   │   │   
    │   ├── ├── ├── app_routes.dart
    │   ├── ├── ├── app_screens.dart
    │   │   │    
    │   ├── ├── storage
    │   │   │    
    │   ├── ├── ├── storage_service.dart
    │   │   │   
    │   ├── ├── themes
    │   │   │   
    │   ├── ├── ├── app_appbar_theme.dart
    │   ├── ├── ├── app_bottom_nav_bar_theme.dart
    │   ├── ├── ├── app_bottom_sheet_theme.dart
    │   ├── ├── ├── app_card_theme.dart
    │   ├── ├── ├── app_check_box_theme.dart
    │   ├── ├── ├── app_chip_theme.dart
    │   ├── ├── ├── app_dialogue_theme.dart
    │   ├── ├── ├── app_elevated_btn_theme.dart
    │   ├── ├── ├── app_expansion_tile_theme.dart
    │   ├── ├── ├── app_floating_action_bar_theme.dart
    │   ├── ├── ├── app_input_decoration_theme.dart
    │   ├── ├── ├── app_nav_drawer_theme.dart
    │   ├── ├── ├── app_outline_btn_theme.dart
    │   ├── ├── ├── app_page_transition_theme.dart
    │   ├── ├── ├── app_progress_indicator_theme.dart
    │   ├── ├── ├── app_radio_theme.dart
    │   ├── ├── ├── app_scroll_bar_theme.dart
    │   ├── ├── ├── app_snack_bar_theme.dart
    │   ├── ├── ├── app_switch_theme.dart
    │   ├── ├── ├── app_tab_bar_theme.dart
    │   ├── ├── ├── app_text_btn_theme.dart
    │   ├── ├── ├── app_text_theme.dart
    │   ├── ├── ├── app_tooltip_theme.dart
    │   ├── ├── ├── dark_theme.dart
    │   ├── ├── ├── light_theme.dart
    │   ├── ├── ├── theme_manager.dart
    │   ├── ├── ├── theme.dart
    │   │   │   
    │   ├── ├── utils
    │   │   │   
    │   ├── ├── ├── device
    │   │   │   │ 
    │   ├── ├── ├── ├── device_utility.dart
    │   │   │   │  
    │   ├── ├── ├── validators
    │   │   │   │  
    │   ├── ├── ├── ├── app_validation.dart
    │   │   │   │  
    │   ├── ├── ├── helper_method.dart
    │   ├── ├── ├── logger_utils.dart
    │   ├── ├── ├── network_utils.dart
    │   ├── ├── ├── permission_utils.dart
    │   │   │   
    │   ├── ├── widgets
    │   │   │   
    │   ├── ├── ├── curved_bottom_border.dart
    │   ├── ├── ├── custom_app_background.dart
    │   ├── ├── ├── custom_app_bar.dart
    │   ├── ├── ├── custom_bottom_sheet.dart
    │   ├── ├── ├── custom_nav_bar.dart
    │   ├── ├── ├── custom_network_image.dart
    │   ├── ├── ├── custom_pin_code_text_field.dart
    │   ├── ├── ├── custom_rich_text.dart
    │   ├── ├── ├── custom_rounded_inner_icon.dart
    │   ├── ├── ├── dotted_border.dart
    │   ├── ├── ├── rounded_profile_card.dart
    │   ├── ├── ├── row_end_text.dart
    │   │   │ 
    │   │   │  
    │   ├── data
    │   │   │  
    │   │   │  
    │   ├── ├── data_sources
    │   │   │   │ 
    │   ├── ├── ├── remote
    │   │   │   │   
    │   ├── ├── ├── ├── remote_data_source_impl.dart
    │   ├── ├── ├── ├── remote_data_source.dart
    │   │   │   │   
    │   ├── ├── mapper
    │   │   │   
    │   ├── ├── ├── sample_mapper.dart
    │   │   │    
    │   ├── ├── models
    │   │   │    
    │   ├── ├── ├── sample_dto.dart
    │   │   │    
    │   ├── ├── repositories
    │   │   │   
    │   ├── ├── ├── sample_repository_impl.dart
    │   │   │    
    │   │   │
    │   ├── domain
    │   │   │  
    │   │   │
    │   ├── ├── entities
    │   │   │    
    │   ├── ├── ├── sample.dart
    │   │   │    
    │   ├── ├── repositories
    │   │   │    
    │   ├── ├── ├── sample_repository.dart
    │   │   │    
    │   ├── ├── use_cases
    │   │   │    
    │   ├── ├── ├── get_sample_data_use_cases.dart
    │   │   │
    │   │   │    
    │   ├── presentation
    │   │   │ 
    │   │   │ 
    │   ├── ├── bindings
    │   │   │   │ 
    │   ├── ├── ├── auth
    │   │   │   │ 
    │   ├── ├── ├── ├── change_password_bindings.dart
    │   ├── ├── ├── ├── forgot_password_bindings.dart
    │   ├── ├── ├── ├── reset_password_bindings.dart
    │   ├── ├── ├── ├── sign_in_bindings.dart
    │   ├── ├── ├── ├── sign_up_bindings.dart
    │   ├── ├── ├── ├── verify_email_bindings.dart
    │   │   │   │   
    │   ├── ├── ├── general_bindings.dart
    │   ├── ├── ├── localization_bindings.dart
    │   ├── ├── ├── splash_bindings.dart
    │   ├── ├── ├── test_bindings.dart
    │   │   │   │ 
    │   ├── ├── controllers
    │   │   │   │ 
    │   ├── ├── ├── auth
    │   │   │   │   
    │   ├── ├── ├── ├── change_password_controller.dart
    │   ├── ├── ├── ├── forgot_password_controller.dart
    │   ├── ├── ├── ├── reset_password_controller.dart
    │   ├── ├── ├── ├── sign_in_controller.dart
    │   ├── ├── ├── ├── sign_up_controller.dart
    │   ├── ├── ├── ├── verify_email_controller.dart
    │   │   │   │   
    │   ├── ├── ├── general_controller.dart
    │   ├── ├── ├── localization_controller.dart
    │   ├── ├── ├── navigation_controller.dart
    │   ├── ├── ├── sample_controller.dart
    │   ├── ├── ├── splash_controller.dart
    │   │   │   
    │   ├── ├── screens
    │   │   │   │ 
    │   ├── ├── ├── auth
    │   │   │   │   
    │   ├── ├── ├── ├── change_password_screen.dart
    │   ├── ├── ├── ├── forgot_password_screen.dart
    │   ├── ├── ├── ├── reset_password_screen.dart
    │   ├── ├── ├── ├── sign_in_screen.dart
    │   ├── ├── ├── ├── sign_up_screen.dart
    │   ├── ├── ├── ├── verify_email_screen.dart
    │   │   │   │   
    │   ├── ├── ├── profile
    │   │   │   │   
    │   ├── ├── ├── ├── account_info_screen.dart
    │   ├── ├── ├── ├── profile_screen.dart
    │   │   │   │   
    │   ├── ├── ├── general_screen.dart
    │   ├── ├── ├── home_screen.dart
    │   ├── ├── ├── splash_screen.dart
    │   ├── ├── ├── test_screen.dart
    │   │   │   
    │   ├── ├── widgets
    │   │   │   
    │   ├── ├── ├── .gitkeep
    │   │
    │   │
    │   ├── main.dart
    │   
    │      
    ├── test 
    │   
    │   ├── widget_test.dart   
    │  
    │   
    ├── pubspec.yaml
    │ 
    │   
    ├── analysis_options.yaml
    │   

