class UserAccountModel {
  String icon;
  String title;
  String link;

  UserAccountModel({required this.icon, required this.title, required this.link});

  static List<UserAccountModel> userAccountItems = [
    UserAccountModel(icon: "assets/icons/github-icon.svg", title: "Github", link: "github.com/sayapakailinuxpak"),
    UserAccountModel(icon: "assets/icons/linkedin-icon.svg", title: "LinkedIn", link: "www.linkedin.com/in/eldis-simone-219256193/"),
    UserAccountModel(icon: "assets/icons/dribbble-icon.svg", title: "Dribbble", link: "dribbble.com/eldis_simone")
  ];
}