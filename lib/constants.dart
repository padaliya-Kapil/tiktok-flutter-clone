import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:tiktok_tutorial/views/screens/chat_screen.dart';
import 'package:tiktok_tutorial/views/screens/go_live_screen.dart';
import 'package:tiktok_tutorial/views/screens/calendar_screen.dart';
import 'package:tiktok_tutorial/views/screens/profile_screen.dart';
import 'package:tiktok_tutorial/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  ChatScreen(),
  GoLiveScreen(),
  CalendarScreen(),
  ProfileScreen()
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
