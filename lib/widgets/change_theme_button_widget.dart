import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_facebook_responsive_ui/widgets/theme_provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final themeProvider =  Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value){
          final provider = Provider.of<ThemeProvider>(context, listen: value);
      provider.toggleTheme(value);
     }
    );
  }
}
