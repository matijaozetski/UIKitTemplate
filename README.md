# UIKitTemplate Starter Project
## Introduction
This starter project is designed to facilitate rapid and efficient development of iOS applications using Swift and UIKit. It provides a well-organized project structure, essential UI components, and integrated dependencies for network management, secure data handling, and UI layout. The project is ideal for developers looking to jumpstart their iOS app development with a solid foundation.

## Project Structure
The project is structured into key directories and files, each serving a specific purpose:

- **DataStorage**: Contains classes and utilities for data handling and storage. Includes:
- **Presentation**: Holds all UI-related elements using UIKit.
- **Resources**: Assets and other resources.
- **Extensions**: Swift extensions for additional functionality.
- **Configuration**: XCConfig files for managing different build environments.

## Dependencies
This project uses Swift Package Manager for dependency management. The following dependencies are included:

- **Alamofire**: For efficient and elegant networking.
- **KeychainSwift**: To securely handle sensitive data storage.
- **SnapKit**: For making Auto Layout easy and readable.

## Getting Started
To use this starter project for your own app, follow these steps:

1. Clone the Repository: Clone or download the starter project to your local machine.
2. Rename the Project: Change the project's name from UIKitTemplate to your desired app name. This includes renaming the project file, folders, and updating any references within the code. Use Xcode's refactor feature to ensure all instances are updated.
3. Update Bundle Identifier: Change the bundle identifier to match your new app name.
4. Install Dependencies: Open the project in Xcode. Go to File > Swift Packages > Update to Latest Package Versions.
5. Review and Update Configurations: Check the .xcconfig files and adjust settings for different environments (Development, Staging, Production).
6. Run the Project: Build and run the project to ensure everything is set up correctly.
7. Start Development: Begin adding new features, UI elements, and other functionalities to your app.

## Project Renaming Script
The `rename_project.sh` script is a convenient tool to quickly rename the project. This script will update project file and folder names, as well as replace instances of the default project name, author, and creation date within files, with the values you specify.

### How to Use the Script
1. **Ensure Script Execution Permission**:
Before running the script for the first time, you need to ensure it has the necessary execution permissions. Open Terminal, navigate to your project's root directory, and run:
```chmod +x rename_project.sh```
1. **Running the Script**:
Execute the script by running the following command in the Terminal at the root of your project:
```./rename_project.sh```
You will be prompted to enter the new project name, author name, and creation date.

## Contributing
Contributions to this starter project are welcome. Please ensure you follow the coding standards and best practices as outlined in the project.
