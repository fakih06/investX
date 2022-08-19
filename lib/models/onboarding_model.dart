class _OnboardingModel {
  final String title;
  final String subTitle;
  final String imagePath;
  _OnboardingModel({
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });
}

final List<_OnboardingModel> onboardingModel = [
  _OnboardingModel(
    title: 'Become a Rich from nothing',
    subTitle: 'Jadilah kaya dengan investasi bersama kami.',
    imagePath: 'assets/images/illustration-1.png',
  ),
  _OnboardingModel(
    title: 'Get Rich Quick',
    subTitle: 'Kaya bukan sekedar beruntung, tetapi usaha.',
    imagePath: 'assets/images/Illustration.png',
  ),
  _OnboardingModel(
    title: 'Become a Rich from nothing',
    subTitle: 'Jadilah kaya dengan investasi bersama kami.',
    imagePath: 'assets/images/illustration-1.png',
  ),
];
