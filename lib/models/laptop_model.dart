
import 'dart:convert';

Laptop laptopFromJson(String str) => Laptop.fromJson(json.decode(str));

String laptopToJson(Laptop data) => json.encode(data.toJson());

class Laptop {
    String ? laptopId;
    String ? userId;
    String ? laptopName;
    String ? laptopScreen;
    String ? laptopProcessor;
    String ? laptopRam;
    String ? laptopHardisk;
    String ? laptopColor;
    String ? laptopAge;
    String ? laptopType;
    String ? laptopCondition;
    String ? laptopDescription;
    String ? laptopPrice;

    Laptop({
        required this.laptopId,
        required this.userId,
        required this.laptopName,
        required this.laptopScreen,
        required this.laptopProcessor,
        required this.laptopRam,
        required this.laptopHardisk,
        required this.laptopColor,
        required this.laptopAge,
        required this.laptopType,
        required this.laptopCondition,
        required this.laptopDescription,
        required this.laptopPrice,
    });

    factory Laptop.fromJson(Map<String, dynamic> json) => Laptop(
        laptopId: json["laptop_id"],
        userId: json["user_id"],
        laptopName: json["laptop_name"],
        laptopScreen: json["laptop_screen"],
        laptopProcessor: json["laptop_processor"],
        laptopRam: json["laptop_ram"],
        laptopHardisk: json["laptop_hardisk"],
        laptopColor: json["laptop_color"],
        laptopAge: json["laptop_age"],
        laptopType: json["laptop_type"],
        laptopCondition: json["laptop_condition"],
        laptopDescription: json["laptop_description"],
        laptopPrice: json["laptop_price"],
    );

    Map<String, dynamic> toJson() => {
        "laptop_id": laptopId,
        "user_id": userId,
        "laptop_name": laptopName,
        "laptop_screen": laptopScreen,
        "laptop_processor": laptopProcessor,
        "laptop_ram": laptopRam,
        "laptop_hardisk": laptopHardisk,
        "laptop_color": laptopColor,
        "laptop_age": laptopAge,
        "laptop_type": laptopType,
        "laptop_condition": laptopCondition,
        "laptop_description": laptopDescription,
        "laptop_price": laptopPrice,
    };
}
