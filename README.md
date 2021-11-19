# Find My Fish (Group 19)
> Find My Fish is a mobile application that allows recreational and professional users to learn more about their local bodies of water, allowing them to continue their fishing activities, while preserving our environment.

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)
<!-- * [License](#license) -->


## General Information
- Find My Fish is a mobile application supported both on Android, and IOS devices thanks to the cross-platform feature of Flutter. This software utilizes Flutter for the frontend of the application, and utilizes the language Dart in order to construct the rest of the features.
- Find My Fish attempts to solve the lack of availability of information regarding our environment's endangered species, while also providing detailed reports of what users can expect to find near their location, thus helping in the awareness of their surroundings.
- Overall, the goal of this application is to bring users adaptive information, no matter their location, on where, and what they can find in their local bodies of water, thus bringing them the best experience possible while maintaining the integrity of our environment.
- This project was started not only as a class assignment for the class CEN 3031 at The University of Florida, but also in order to participate in one of the UF Hackathon's challenge statements which aimed at building a solution to fight against climate change.



## Technologies Used
- Flutter - version 2.53
- Dart - version 2.12.4
- Google Maps Flutter - version 2.0.11
- Firebase Core - version 1.10


## Features
List the ready features here:
- Access an interactive map focused on your location, showing your surrounding fishing locations and information regarding various species found within your environment.
- Get detailed information about every location supported on the app including regulations, hours of operation, and fish species that can be found at that specific location.
- Learn about a new endangered species every week thanks to a dedicated page which will rotate information on a weekly basis.
- Report any violations that you are witness of with a direct link to the FWC report form.
- Receive weekly notifications on the newly endangered species of the week, redirecting you to the ESOTW page.


## Screenshots
![alt text](https://i.ibb.co/D9dB6gN/Google-Maps-page.jpg)
![alt text](https://i.ibb.co/DQMNQgx/locations-page.png)
![alt text](https://i.ibb.co/yWq9ZRL/notifications.png)


## Setup
In order to make the explanations for this setup as detailed as possible we will put a focus on Android Studio as our IDE, and Windows as the operating system for this section of the instructions.

To first get started, you will want to go ahead and install Android Studio for your specific operating system. The link for the following can be found at https://developer.android.com/studio. Once you finish its installation, you can go ahead and open the IDE, and from here we will go ahead and install the rest of the required technologies to properly run our application.

You will need to go ahead and install Flutter onto your local computer, and the download can be found at https://docs.flutter.dev/get-started/install.

Once installed, make sure you extract the folder in a location you will remember as we are going to use the folder's path within our IDE. After installing, you will have to open the flutter folder and navigate to "bin". Once at this location, you will want to copy your current path as we will be setting up an environment variable for faster terminal commands.

Once you have the path, you will want to go ahead and launch the environment variable software on your Windows machine, and navigate to path as seen on the image below:

![alt text](https://i.ibb.co/ygVKvJ1/path.png)

You will now select the "path" section and create a new variable; this is where you will input your ...flutter\bin path in order to create the environment variable.

You are now done, installing flutter to your local machine, and in order to make sure that you have successfully installed the framework, you may run "flutter --version" within your cmd in order to make sure your machine is detecting your installed version.

You are now ready to open a Flutter application within Android Studio. We will now acquire the codebase of the project so that you are able to run it on your local instance. To do so, you have to clone the repository on your local machine. Within a folder, open git bash if possible and input the command "git clone https://github.com/cindylin235/11250group19.git". You now have a version of FindMyFish on your local machine, thus allowing you to now contribute to the project which is open source.

You may now launch Android Studio where you will be prompted to create, or open a project. You can select the "open" option and locate the the folder called "FindMyFish_devBuild_2.0". Once open you will be prompted with a few errors that will fix with a few changes within the IDE settings; however for the moment we will go ahead and create our virtual device which will run our application. 

You can access the AVD manager (helps you organize your various virtual devices) with the button at the top right of the page as seen in the image below:

![alt text](https://www.linkpicture.com/q/AVD-manager-2.png)

You will now be creating your first Virtual Device. You may use any compatible virtual device manager, however utilizing Android Studio's built in AVD manager allows for an efficient way to see the code in real time, and make easy changes. When making your virtual device, make sure you select an android device which supports Google Play. The device should have a logo similar to the one you see in the image below:

![alt text](https://i.ibb.co/W6kqLHD/avd-manager.png)

You will then have to make sure to select the version "R" of Android (Android 11.0); if not already installed, the IDE will propose you to download the operating system. You will then be able to make additional configurations if wanted, however your virtual device will run just fine if any are not made.

Now that you have your virtual device ready to run, we are going to make changes within the settings of Android Studio in order for you to run a Flutter application within your IDE. You will first want to go ahead and install the Flutter plugin (this will also install the Dart plugin as they need to be installed together in order for the application to run). You can find these plugins within the "Settings" of Android Studio. To do so, click on the "File" tab on the upper left corner of the IDE, and click on "Settings" within the drop-down. Here you will select "Plugins" and search Flutter. You will then be presented will an install button which you will want to press. Once both plugins are installed, your settings should look something like this:

![alt text](https://i.ibb.co/M1fLYJ0/flutter-settings.png)

You now have installed the flutter, and dart plugin within your IDE. Finally, you will have to insert the path of your Flutter SDK (installation) into Android Studio. This can be done by navigating to "Settings" and under the "Languages & Frameworks" dropdown, select "Flutter" You can now insert your parth which should look something like ...\flutter_windows_2.5.3-stable\flutter. 

![alt text](https://i.ibb.co/CWkycR5/download-path.png)

We can now focus on the codebase... Although we have setup our IDE to support Flutter, you will be prompted for a few errors as you do not have all dependencies that the project uses installed on your machine. More than likely your IDE will alert you of this and will propose you to get the dependencies (you can see this in the image below).

![alt text](https://i.ibb.co/R6zbs6Y/alerty.png)

 You must accept this proposition; if not given, you can run the following command within your terminal "(path of flutter.bat ex: ...flutter\bin\flutter.bat) --no-color pub get". This will retrieve all required dependencies for Find My Fish.
 
 ![alt text](https://i.ibb.co/5r9hxrt/command.png)

You are now ready to start the application! All dependencies have been installed and the app is ready to run. Make sure you have started your virtual device and that your IDE is showing the following:

 ![alt text](https://i.ibb.co/bP0w0CD/sdk.png)


## Project Status
Find My Fish is currently no longer being worked on as we just finished publishing the final version on our github. The project is still open to any changes made and we will be reviewing every so often if any pushes have been made on the codebase. We will update this section of the Readme if the project is picked back up by the main development team.


## Room for Improvement
As we explained, we are still open to new changes to the project as we can potentially aim to publish the app officially if the build is a bit more complete.

Room for improvement:
- Better optimization within the code. The app currently runs rather well, however we can definitely improve in the speed of the certain processes.
- A better UI is needed!  We are currently using the native UI of Flutter, and our team believes that there are better options with the use of third party libraries that may provide an overall better user-experience/
To do:
- Add a way for users to report FWC violations directly within the application without having to be redirected to the FWC website.
- Add voice search input for users to have a better way to locate a desired location.
- Build a tutorial for first time users.


## Acknowledgements
Give credit here.
- This project was inspired by an initial idea of Jared Bowen
- Many thanks to Group 19 from CEN 3031 of Fall 2021 for their involvement in the creation of Find My Fish :)


## Contact
Created by Group 19 from class of Fall 2021 CEN 3031 - feel free to contact us Group19CEN3031@gmail.com!


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

<!-- You don't have to include all sections - just the one's relevant to your project -->
