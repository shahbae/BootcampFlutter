import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  int armorTitanPower = 3;
  int attackTitanPower = 8;
  int beastTitanPower = 6;
  int humanPower = 4;

  ArmorTitan armorTitan = ArmorTitan(armorTitanPower);
  AttackTitan attackTitan = AttackTitan(attackTitanPower);
  BeastTitan beastTitan = BeastTitan(beastTitanPower);
  Human human = Human(humanPower);

  print("Armor Titan Power: ${armorTitan.powerPoint}");
  print("Attack Titan Power: ${attackTitan.powerPoint}");
  print("Beast Titan Power: ${beastTitan.powerPoint}");
  print("Human Power: ${human.powerPoint}");

  print("Armor Titan: ${armorTitan.terjang()}");
  print("Attack Titan: ${attackTitan.punch()}");
  print("Beast Titan: ${beastTitan.lempar()}");
  print("Human: ${human.killAllTitan()}");
}
