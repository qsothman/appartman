import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class SliderModel{
  String imagePath;
  String title;
  String desc;
  SliderModel({this.imagePath, this.title, this.desc,});

  void setImageAssetPath(String getImagePath){
    imagePath = getImagePath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}

List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();
  
  //boarding1
  sliderModel.setImageAssetPath('assets/images/illustration1.svg');
  sliderModel.setTitle('Siparişlerini gir');
  sliderModel.setDesc('Apartman görevlisi kapını çalmak zorunda. Siparişlerini mobil uygulamadan gir.Sosyal mesefeyi koru.');
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //boarding2
  sliderModel.setImageAssetPath('assets/images/illustration2.svg');
  sliderModel.setTitle('Siparişin kapında');
  sliderModel.setDesc('Görevlinin çalışma saatine göre sabah, öğle ya da akşam siparişin geldiğinde telefonuna bildirim gelsin.',);
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //boarding3
  sliderModel.setImageAssetPath('assets/images/illustration3.svg');
  sliderModel.setTitle('Para üstü ile uğraşma');
  sliderModel.setDesc('Görevliye belli bir miktar vereyim o aldıkça oradan düşsündersen; ne kadar harcandı, ne kadar kaldı uygulamadan görebilirsin.');
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;

}