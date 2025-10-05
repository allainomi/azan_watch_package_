#!/bin/bash

echo "=== Creating Flutter Project Structure for Azan Watch ==="

# بنیادی ڈائریکٹریز بنائیں
mkdir -p lib/screens
mkdir -p lib/widgets  
mkdir -p lib/models
mkdir -p lib/services
mkdir -p lib/utils
mkdir -p assets/images
mkdir -p assets/audio
mkdir -p assets/fonts

# pubspec.yaml فائل بنائیں
cat > pubspec.yaml << 'PUBSPEC'
name: azan_watch
description: Azan Watch App with MP3 and Test Button

publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter

flutter:
  uses-material-design: true
  assets:
    - assets/images/
    - assets/audio/
    - assets/fonts/
PUBSPEC

# main.dart فائل بنائیں
cat > lib/main.dart << 'MAIN'
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AzanWatchApp());
}

class AzanWatchApp extends StatelessWidget {
  const AzanWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Azan Watch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
MAIN

# home_screen.dart فائل بنائیں  
cat > lib/screens/home_screen.dart << 'HOME'
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Azan Watch App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Azan Watch with MP3',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Test button functionality
              },
              child: const Text('Test Button'),
            ),
          ],
        ),
      ),
    );
  }
}
HOME

# README.md فائل بنائیں
cat > README.md << 'README'
# Azan Watch App with MP3

A Flutter application for Azan watch with MP3 functionality and test buttons.

## Project Structure
