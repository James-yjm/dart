import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print("가위, 바위, 보 중 하나를 선택해 주세요");

  final String userInput = stdin.readLineSync(encoding: utf8) ?? "Error";
  const List<String> cpuReaction = ['가위', '바위', '보'];

  final String cpuDecision = cpuReaction[Random().nextInt(3)];

  print("사용자 결정은 '$userInput' 이고, ");
  print("cpu 결정은 '$cpuDecision' 입니다");

  String result = gameResult(userInput, cpuDecision);

  print("결과는 '$result' 입니다.");
}

String gameResult(String userInput, String cpuDecision) {
  String resultString = "same";

  switch (userInput) {
    case "가위":
      if (cpuDecision == "바위") {
        resultString = "CPU 승리";
      } else if (cpuDecision == "보") {
        resultString = "User 승리";
      }
    case "바위":
      if (cpuDecision == "가위") {
        resultString = "User 승리";
      } else if (cpuDecision == '보') {
        resultString = "CPU 승리";
      }
    case "보":
      if (cpuDecision == "가위") {
        resultString = "CPU 승리";
      } else if (cpuDecision == "바위") {
        resultString = "User 승리";
      }
    default:
      resultString = "알 수 없음";
  }
  return (resultString);
}
