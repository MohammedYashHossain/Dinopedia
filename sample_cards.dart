import '../models/dino_card.dart';

final List<DinoCard> sampleCards = [
  DinoCard(
    id: 1,
    name: 'Tyrannosaurus Rex',
    type: DinoType.carnivore,
    rarity: CardRarity.mythic,
    imagePath: 'assets/images/trex.png',
    facts: [
      'Lived ~68 million years ago',
      'Had a bite force of 12,800 pounds',
      'Could grow up to 40 feet long',
    ],
  ),
  DinoCard(
    id: 2,
    name: 'Triceratops',
    type: DinoType.herbivore,
    rarity: CardRarity.epic,
    imagePath: 'assets/images/triceratops.png',
    facts: [
      'Lived ~68 million years ago',
      'Had three horns on its face',
      'Could grow up to 30 feet long',
    ],
  ),
  DinoCard(
    id: 3,
    name: 'Pterodactyl',
    type: DinoType.flying,
    rarity: CardRarity.rare,
    imagePath: 'assets/images/pterodactyl.png',
    facts: [
      'Lived ~150 million years ago',
      'Had a wingspan up to 20 feet',
      'One of the first flying vertebrates',
    ],
  ),
  DinoCard(
    id: 4,
    name: 'Stegosaurus',
    type: DinoType.herbivore,
    rarity: CardRarity.rare,
    imagePath: 'assets/images/stegosaurus.png',
    facts: [
      'Lived ~150 million years ago',
      'Had 17 plates on its back',
      'Could grow up to 30 feet long',
    ],
  ),
  DinoCard(
    id: 5,
    name: 'Velociraptor',
    type: DinoType.carnivore,
    rarity: CardRarity.epic,
    imagePath: 'assets/images/velociraptor.png',
    facts: [
      'Lived ~75 million years ago',
      'Was about the size of a turkey',
      'Had feathers and was very intelligent',
    ],
    isHolo: true,
  ),
]; 