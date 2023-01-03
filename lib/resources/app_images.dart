class AppImages {
  const AppImages._();

  static const _base = 'assets/images/';

  static String _fullPath(String name) => '$_base$name';
  static final microSoft = _fullPath('microsoft.png');
  static final apple = _fullPath('apple.png');
  static final google = _fullPath('google.png');
  static final back = _fullPath('back.svg');
}
