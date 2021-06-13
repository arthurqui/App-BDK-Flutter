import 'package:url_launcher/url_launcher.dart';

discordlink() async {
  const url = 'https://discord.gg/6Xm58jc';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

instalink() async {
  const url = 'https://www.instagram.com/brasildropkeys/?hl=pt-br';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

steamlink() async {
  const url = 'https://steamcommunity.com/groups/brdropkeys';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

youtubelink() async {
  const url = 'https://www.youtube.com/c/BrasilDropKeys?sub_confirmation=1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

precoinvsteam() async {
  const url = 'https://steam.tools/itemvalue/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

recuperarlink() async {
  const url = 'https://www.youtube.com/watch?v=bAuZN3C1FGY';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
