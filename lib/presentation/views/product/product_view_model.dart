import 'package:chris_ishida_site/core/models/product/product.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductViewModel extends BaseViewModel {
  Future<void> onGithub(Product product) async {
    for (var link in product.githubUrls) {
      final Uri url = Uri.parse(
        link,
      );
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
    }
  }
}
