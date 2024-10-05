import 'package:flutter/material.dart';
import 'package:location_app/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:location_app/view/location_search_screen.dart';

import 'package:location_app/viewmodel/places_viewmodel.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SearchLocationViewModel()),
        
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: whiteColor)),
              colorScheme:
                  ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 12, 12, 12)),
              useMaterial3: true,
            ),
            home: const SearchLocationScreen()));
  }
}
  