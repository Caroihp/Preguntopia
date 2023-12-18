import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:preguntopia/core/app_export.dart';
import 'package:preguntopia/widgets/custom_elevated_button.dart';

class PreguntasdeportesScreen extends StatefulWidget {
  const PreguntasdeportesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  _PreguntasdeportesScreenState createState() => _PreguntasdeportesScreenState();
}

class Question {
  String pregunta;
  List<String> opciones;
  String respuesta_correcta;

  Question({required this.pregunta, required this.opciones, required this.respuesta_correcta});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      pregunta: json['pregunta'],
      opciones: List<String>.from(json['opciones']),
      respuesta_correcta: json['respuesta_correcta'],
    );
  }
}

class _PreguntasdeportesScreenState extends State<PreguntasdeportesScreen> {
  late List<Question> pregunta;
  late Question currentQuestion;
  late Random random = Random();

  @override
  void initState() {
    super.initState();
    loadQuestions().then((loadedQuestions) {
      pregunta = loadedQuestions;
      currentQuestion = pregunta[random.nextInt(pregunta.length)];
      setState(() {});
    });
  }

  Future<List<Question>> loadQuestions() async {
    final jsonString = await rootBundle.loadString('assets/question/preguntas_deportes.json');
    final jsonResponse = json.decode(jsonString) as List;
    return jsonResponse.map((json) => Question.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.blueGray10001,
        body: pregunta.isNotEmpty 
            ? buildQuestionContent(context, mediaQueryData) 
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget buildQuestionContent(BuildContext context, MediaQueryData mediaQueryData) {
    return Container(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height,
      decoration: BoxDecoration(
        color: appTheme.blueGray10001,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgPreguntashistoria,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTwo(context),
            SizedBox(height: 9.v),
            _buildEight(context),
            Spacer(flex: 35),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 287.h,
                margin: EdgeInsets.only(right: 57.h),
                child: Text(
                  currentQuestion.pregunta, // Usar la pregunta actual
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
            ),
            Spacer(flex: 64),
            for (var opcion in currentQuestion.opciones) // Crear botones para las opciones
              _buildOptionButton(context, opcion),
            SizedBox(height: 88.v),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String opcion) {
    return CustomElevatedButton(
      text: opcion,
      margin: EdgeInsets.only(
        left: 47.h,
        right: 48.h,
      ),
      onPressed: () {
        // Aquí manejas lo que sucede cuando se selecciona una opción
      },
    );
  }

  /// Section Widget
  Widget _buildBrainDeportesButton(BuildContext context) {
    return CustomElevatedButton(
      height: 37.v,
      width: 94.h,
      text: "15",
      margin: EdgeInsets.only(
        top: 48.v,
        bottom: 11.v,
      ),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle: CustomTextStyles.titleSmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBraindeportes63x65,
            height: 63.v,
            width: 65.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 33.v,
            ),
          ),
          _buildBrainDeportesButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Puntuación: 100",
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "Vidas: 5",
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}