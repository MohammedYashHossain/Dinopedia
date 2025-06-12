enum DinoType {
  herbivore,
  carnivore,
  omnivore,
  aquatic,
  flying,
}

enum CardRarity {
  common,
  rare,
  epic,
  mythic,
}

class DinoCard {
  final int id;
  final String name;
  final DinoType type;
  final CardRarity rarity;
  final String imagePath;
  final List<String> facts;
  final bool isFossil;
  final bool isHolo;

  const DinoCard({
    required this.id,
    required this.name,
    required this.type,
    required this.rarity,
    required this.imagePath,
    required this.facts,
    this.isFossil = false,
    this.isHolo = false,
  });

  factory DinoCard.fromJson(Map<String, dynamic> json) {
    return DinoCard(
      id: json['id'] as int,
      name: json['name'] as String,
      type: DinoType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'].toLowerCase(),
      ),
      rarity: CardRarity.values.firstWhere(
        (e) => e.toString().split('.').last == json['rarity'].toLowerCase(),
      ),
      imagePath: json['image'] as String,
      facts: List<String>.from(json['facts'] as List),
      isFossil: json['isFossil'] as bool? ?? false,
      isHolo: json['isHolo'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type.toString().split('.').last,
      'rarity': rarity.toString().split('.').last,
      'image': imagePath,
      'facts': facts,
      'isFossil': isFossil,
      'isHolo': isHolo,
    };
  }
} 