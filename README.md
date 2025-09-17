
Aesthetic Flow Shop - Flutter Shopping App
A comprehensive, feature-rich shopping application built with Flutter and Dart. This project demonstrates core programming concepts and professional Flutter development practices, including user authentication, product displays, state management, and internationalization.

Project Overview
This app simulates a real-world e-commerce experience. It guides users from a welcoming landing page through a secure authentication process (Sign-Up/Sign-In) and into a main shopping interface. The home screen features a dynamic product catalog with a hero banner, a grid of products, and a list of hot offers. The project emphasizes clean code, proper architecture, and best practices, culminating in adding full Arabic language localization support.

UI Inspiration: Aesthetic Flow Shop Intro

Features
Welcome Screen: Aesthetic intro with a custom AppBar, a row of local and network images, and custom-styled typography using the Suwannaphum font.

User Authentication:

Sign-Up Form: Validates full name (title case), email format, password length, and password confirmation.

Sign-In Form: Validates email format and password length.

Successfully submitting either form displays a confirmation dialog and navigates to the main app.

Animated Navigation: Smooth fade-out and fade-in transitions between the auth screens and the main shopping home page.

Interactive Shopping Home Screen:

AppBar with a titled header.

Horizontal PageView for featured product images.

Responsive GridView (2 products per row) displaying product cards. Tapping the "Add to Cart" icon shows a confirmation SnackBar.

Vertical ListView for a "Hot Offers" section, built with ListView.builder for efficiency.

Arabic Localization (Bonus): Full app internationalization using flutter_intl and ARB files. All UI text, including form labels and messages, can be displayed in Arabic.

