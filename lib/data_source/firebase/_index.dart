import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
// import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_storage_mocks/firebase_storage_mocks.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:path/path.dart';

import '../../common/_index.dart';

part 'fb.auth.dart';
part 'fb.auth.mock.dart';
part 'fb.firestore.dart';
part 'fb.firestore.mock.dart';
part 'fb.storage.dart';
part 'fb.storage.mock.dart';
