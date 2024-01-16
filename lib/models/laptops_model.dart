import 'dart:convert';

List<LaptopsModel> laptopsModelFromJson(String str) => List<LaptopsModel>.from(json.decode(str).map((x) => LaptopsModel.fromJson(x)));

String laptopsModelToJson(List<LaptopsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LaptopsModel {
    String userId;
    String laptopId;
    String laptopName;
    String laptopScreen;
    String laptopProcessor;
    String laptopRam;
    String laptopHardisk;
    String laptopColor;
    String laptopAge;
    String laptopType;
    String laptopCondition;
    String laptopDescription;
    String laptopPrice;
    String laptopGambar;

    LaptopsModel({
        required this.userId,
        required this.laptopId,
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
        required this.laptopGambar,
    });

    factory LaptopsModel.fromJson(Map<String, dynamic> json) => LaptopsModel(
        userId: json["user_id"],
        laptopId: json["laptop_id"],
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
        laptopGambar: json["laptop_gambar"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "laptop_id": laptopId,
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
        "laptop_gambar": laptopGambar,
    };
}
