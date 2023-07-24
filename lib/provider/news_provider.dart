import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/http/custome_http.dart';
import 'package:untitled2/model/news_model.dart';

class NewsProvider with ChangeNotifier{

  NewsModel? newsModel;
  Future<NewsModel> getNewsData(int pageNo,String sortBy)async{
    newsModel=await CustomeHttpRequest.fetchHomeData(pageNo,sortBy);
    return newsModel!;
  }

}

