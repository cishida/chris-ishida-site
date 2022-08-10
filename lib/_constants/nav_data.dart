part of constants;

class NavData {
  static List<NavItem> navItems = [
    NavItem(
      title: Strings.home,
      routeName: NavContainerViewRoutes.homeView,
    ),
    NavItem(
      title: Strings.about,
      routeName: NavContainerViewRoutes.aboutView,
    ),
    NavItem(
      title: Strings.products,
      routeName: NavContainerViewRoutes.productsView,
    ),
    NavItem(
      title: Strings.contact,
      routeName: NavContainerViewRoutes.contactView,
    ),
  ];
}
