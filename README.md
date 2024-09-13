# Counter App

This Flutter project demonstrates three different state management techniques using **Cubit**, **Bloc**, and **BlocProvider** to manage the state of a simple counter application. Each method achieves the same functionality of incrementing and decrementing a counter, but the approach differs in how the state is handled.
Project Overview

<p align="center">
  <img src="https://github.com/AppleStalker/counter-app/blob/main/assets/screenshots/1.png" alt="Image 1" width="200"/>
  <img src="https://github.com/AppleStalker/counter-app/blob/main/assets/screenshots/2.png" alt="Image 2" width="200"/>
  <img src="https://github.com/AppleStalker/counter-app/blob/main/assets/screenshots/3.png" alt="Image 3" width="200"/>
</p>


The application has been implemented using the following state management techniques:

  - Cubit: A simple, lightweight state management solution that is part of the Bloc package. It allows managing state with a minimal setup.

  - Bloc: A more structured approach, where state is managed using events and states, allowing for more complex logic and separation of concerns.

  - BlocProvider: An InheritedWidget-based approach that provides the Bloc (or Cubit) to the widget tree, ensuring that the state is available throughout the app in a scalable manner.

Each approach has been implemented separately in the same application to show how they work and how to switch between them without affecting the core functionality.
How to Run the App

You can run the app using either Cubit, Bloc, or BlocProvider by selecting the corresponding setup in the main Dart file. Each method will display the UI with the same functionality but uses a different state management approach under the hood.

### Resources
  - [Bloc Documentation](https://bloclibrary.dev/getting-started/)

    
For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
