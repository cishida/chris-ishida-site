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
      title: Strings.home,
      routeName: NavContainerViewRoutes.homeView,
    ),
    NavItemData(
      title: Strings.about,
      routeName: NavContainerViewRoutes.aboutView,
    ),
    NavItemData(
      title: Strings.products,
      routeName: NavContainerViewRoutes.productsView,
    ),
    NavItemData(
      title: Strings.contact,
      routeName: NavContainerViewRoutes.contactView,
    ),
  ];
}
