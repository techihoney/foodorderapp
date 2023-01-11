
import 'dart:ui';

class MenuList {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  MenuList( {
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });
}
