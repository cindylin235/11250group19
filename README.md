# Find My Fish (Group 19)
> Find My Fish is a mobile application that allows recreational and professional users to learn more about their local bodies of water, allowing them to continue their fishing activities, while preserving our environment.
## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Screenshots](#screenshots)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)
* [Contact](#contact)
<!-- * [License](#license) -->


## General Information
- Find My Fish is mobile application supported both on Android, and IOS devices thanks to the cross-platfrom feature of Flutter. This software utilizes Flutter for the frontend of the application, and utlizes the language Dart in order to construct the rest of the features. 
- Find My Fish attempts to solve the lack in avaibility of information regarding our environment's endagerend species, while also providing detailed reports of what users can expect to find near their location, thus fixing helping in the awareness of their surroundings.
- Overall, the goal of this application is to bring users adaptive information, no matter their location, on where, and what they can find in their local bodies of water, thus bringing them the best experience possbile while maintaining the integrity of our environment.
- This project was started not only as class assignment for the class CEN 3031 at The University of Florida, but also in order to participate in one of the UF Hackathon's challeng statement which aimed at building a solution to fight against climate change.


## Technologies Used
- Flutter - version 2.53
- Dart - version 2.12.4
- Google Maps Flutter - version 2.0.11
- Firebase Core - version 1.10


## Features
List the ready features here:
- Access an interactive map focused on your location, showing your surrounding fishing locations and information regarding various species found within your envrionment.
- Get detailed information about every location supported on the app including regulations, hours of operation, and fish species that can be found at that specific location.
- Learn about a new endangered species every week thanks to a dedicated page which will rotate information on a weekly basis.
- Report any violations that you are witness of with a direct link to the FWC report form.
- Receive weekly notifications on the newly endagered species of the week, redirecting you to the ESOTW page.


## Screenshots
![alt text](https://i.ibb.co/D9dB6gN/Google-Maps-page.jpg)
![alt text](https://i.ibb.co/DQMNQgx/locations-page.png)
![alt text](https://i.ibb.co/yWq9ZRL/notifications.png)

## Setup
In order to make the explanations for this setup as detailed as possible we will put a focus on Android Studio as our IDE, and Windows as the operating system for this section of the instructions.

To first get started, you will want to go ahead and install Android Studio for your specific operating system. The link for the following can be found at https://developer.android.com/studio. Once you finish its installation, you can go ahead and open the IDE, and from here we will go ahead and install the rest of the required technlogoies to properly run our application.

You will need to go ahead and install Flutter onto your local computer, and the download can be found at https://docs.flutter.dev/get-started/install.

Once installed, make sure you extract the folder in a location you will remember as we are going to use the folder's path within our IDE. After installing, you will have to open the flutter folter and navigate to "bin". Once at this location, you will want to copy your current path as we will be setting up an environment variable for faster terminal comamands.

Once you have the path, you will want to go ahead and launch the environment variable software on your Windows machine, and navivate to path as seen on the image below:

![alt text](https://i.ibb.co/ygVKvJ1/path.png)

You will now select the "path" section and create a new variable; this is where you will input your .flutter/bin path in order to create the environment variable.

You are now done, installing flutter to your local machine, and in order to make sure that you have succesfully installed the framework, you may run "flutter --version" within your cmd in order to make sure your machine is detecting your installed version.

You can now open Android Studio where you will start by creating your first Virtual Device. You may use any compatible virtual device manager, however utilizing Android Studio's built in AVD manager allows for an efficient way to see the code in real time, and make easy changes. When making your virtual device, make sure you select an android device which supports Google Play. The device should have a logo similar to the one you see in the image below:

![alt text](https://i.ibb.co/W6kqLHD/avd-manager.png)

## Usage
How does one go about using it?
Provide various use cases and code examples here.

`write-your-code-here`


## Project Status
Project is: _in progress_ / _complete_ / _no longer being worked on_. If you are no longer working on it, provide reasons why.


## Room for Improvement
Include areas you believe need improvement / could be improved. Also add TODOs for future development.

Room for improvement:
- Improvement to be done 1
- Improvement to be done 2

To do:
- Feature to be added 1
- Feature to be added 2


## Acknowledgements
Give credit here.
- This project was inspired by...
- This project was based on [this tutorial](https://www.example.com).
- Many thanks to...


## Contact
Created by [@flynerdpl](https://www.flynerd.pl/) - feel free to contact me!


<!-- Optional -->
<!-- ## License -->
<!-- This project is open source and available under the [... License](). -->

<!-- You don't have to include all sections - just the one's relevant to your project -->
