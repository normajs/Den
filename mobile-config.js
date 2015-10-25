App.info({
  id: 'cc.newspring.newspringapp',
  name: 'NewSpring',
  description: 'App for NewSpring Church',
  author: 'NewSpring Church',
  email: 'web@newspring.cc',
  website: 'https://newspring.cc',
  version: '0.0.1',
  buildNumber: '6'
});

App.icons({
  // iOS
  'iphone': 'assets/icons/icon-60x60.png',
  'iphone_2x': 'assets/icons/icon-60x60@2x.png',
  'ipad': 'assets/icons/icon-76x76.png',
  'ipad_2x': 'assets/icons/icon-76x76@2x.png',

  // Android
  'android_ldpi': 'assets/icons/icon-36x36.png',
  'android_mdpi': 'assets/icons/icon-48x48.png',
  'android_hdpi': 'assets/icons/icon-72x72.png',
  'android_xhdpi': 'assets/icons/icon-96x96.png'
});

App.launchScreens({
  // iOS
  'iphone': 'assets/splash/splash-320x480.png',
  'iphone_2x': 'assets/splash/splash-320x480@2x.png',
  'iphone5': 'assets/splash/splash-320x568@2x.png',
  'iphone6': 'assets/splash/splash-667h.png',
  'iphone6p_portrait': 'assets/splash/splash-736h-portrait.png',
  'iphone6p_landscape': 'assets/splash/splash-736h-landscape.png',
  'ipad_portrait': 'assets/splash/splash-768x1024.png',
  'ipad_portrait_2x': 'assets/splash/splash-768x1024@2x.png',
  'ipad_landscape': 'assets/splash/splash-1024x768.png',
  'ipad_landscape_2x': 'assets/splash/splash-1024x768@2x.png',

  // Android
  'android_ldpi_portrait': 'assets/splash/splash-200x320.png',
  'android_ldpi_landscape': 'assets/splash/splash-320x200.png',
  'android_mdpi_portrait': 'assets/splash/splash-320x480.png',
  'android_mdpi_landscape': 'assets/splash/splash-480x320.png',
  'android_hdpi_portrait': 'assets/splash/splash-480x800.png',
  'android_hdpi_landscape': 'assets/splash/splash-800x480.png',
  'android_xhdpi_portrait': 'assets/splash/splash-720x1280.png',
  'android_xhdpi_landscape': 'assets/splash/splash-1280x720.png'
});

App.accessRule('*');

App.setPreference('StatusBarOverlaysWebView', true);
App.setPreference('EnableBitcode', false);
