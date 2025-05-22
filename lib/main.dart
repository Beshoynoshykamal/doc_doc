import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
  // runApp(
  //    DevicePreview(
  //   builder: (context) {
  //        return   DocApp(appRouter: AppRouter(),);
  //   },
  //    ));
}
