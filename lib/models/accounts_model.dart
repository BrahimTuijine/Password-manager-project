import 'brands_moldel.dart';

class Accounts {
  int id;
  String accountWebsite;
  String accountEmail;
  String accountPassword;
  String brandImage;

  Accounts(this.id, this.accountWebsite, this.accountEmail,
      this.accountPassword, this.brandImage);
}

List<Accounts> accountList = [
  Accounts(1, 'www.facebook.com', 'thisisforfacebook@gmail.com', 'password',
      brands[0].icon),
  Accounts(2, 'www.Badoo.com', 'email@gmail.com', 'anyoas', brands[5].icon),
  Accounts(
      3, 'www.discord.com', 'Discord@gmail.com', 'Discordpass', brands[2].icon),
];
