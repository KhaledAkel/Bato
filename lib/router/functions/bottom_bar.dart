String getBottomBarPageName(int index) {
  switch (index) {
    case 0:
      return 'home';
    case 1:
      return 'explore';
    case 2:
      return 'add_post';
    case 3:
      return 'plan_trip';
    case 4:
      return 'my_profile';
    default:
      return 'home';
  }
}


int getPageIndexOfBottomBar(String? fullPath) {
  switch (fullPath) {
    case '/home':
      return 0;
    case '/explore':
      return 1;
    case '/add_post':
      return 2;
    case '/plan_trip':
      return 3;
    case '/my_profile':
      return 4;
    default:
      return -1;
  }
}
