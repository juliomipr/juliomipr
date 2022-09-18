import 'package:url_launcher/url_launcher.dart';

enum UriWebsite { whatsapp, linkedIn, github, gitlab, gmail }

Future<void> handleUriWebsite(UriWebsite website) async {
  late Uri httpsUri;
  switch (website) {
    case UriWebsite.github:
      httpsUri = Uri(
        scheme: 'https',
        host: 'github.com',
        path: '/juliomipr/',
      );
      await requestLaunchUrl(httpsUri);

      break;

    case UriWebsite.whatsapp:
      httpsUri = Uri(
        scheme: 'https',
        host: 'wa.me',
        path: '/message/5OCVOA3YBFKNO1',
      );
      await requestLaunchUrl(httpsUri);
      break;
    case UriWebsite.linkedIn:
      httpsUri = Uri(
        scheme: 'https',
        host: 'linkedin.com',
        path: '/in/juliomipr/',
      );
      await requestLaunchUrl(httpsUri);
      break;
    case UriWebsite.gitlab:
      httpsUri = Uri(
        scheme: 'https',
        host: 'gitlab.com',
        path: '/juliomipr/',
      );
      await requestLaunchUrl(httpsUri);
      break;
    case UriWebsite.gmail:
      Uri(
        scheme: 'mailto',
        path: 'juliomipr@gmail.com',
        queryParameters: {
          'subject': 'Job offer',
        },
      );
      break;
  }
}

Future<void> requestLaunchUrl(Uri httpsUri) async {
  if (await canLaunchUrl(httpsUri)) {
    await launchUrl(httpsUri);
  } else {
    throw "Could not launch $httpsUri";
  }
}
