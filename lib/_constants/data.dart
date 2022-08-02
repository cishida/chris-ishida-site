part of constants;

class NavItemData {
  NavItemData({
    required this.title,
    required this.routeName,
  });

  final String title;
  final String routeName;
}

class Data {
  static List<NavItemData> navItems = [
    NavItemData(
      title: 'Home',
      routeName: NavContainerViewRoutes.homeView,
    ),
    NavItemData(
      title: 'About',
      routeName: NavContainerViewRoutes.aboutView,
    ),
    NavItemData(
      title: 'Products',
      routeName: NavContainerViewRoutes.productsView,
    ),
    NavItemData(
      title: 'Contact',
      routeName: NavContainerViewRoutes.contactView,
    ),
  ];
}
