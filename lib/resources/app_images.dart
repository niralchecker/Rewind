class AppImages {
  const AppImages._();

  static const _base = 'assets/images/';

  static String _fullPath(String name) => '$_base$name';
  static final splashLogoImage = _fullPath('splash_logo.png');
}
