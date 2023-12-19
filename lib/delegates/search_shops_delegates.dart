import 'package:flutter/material.dart';



class SearchShopsDelegate extends SearchDelegate{

List <String> StoreList = [
    'Sears',
    'Samborns',
    'C&A',
    'Suburbia',
    'InnovaSport',
    'Cinepolis',
    'Centro de ayuda Movistar',
    'GamePlanet',
    'OXXO',
    'Invictus',
  ];

  @override
  String get searchFieldLabel => 'Buscar Tienda';


  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {
        query = "";
      } ,
      )

    ];

  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton (
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    List<String>matchQuery=[];

    // ignore: unused_local_variable
    for(var shops in StoreList){
      if (shops.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(shops);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index) {

      return ListTile(
        title:Text(matchQuery[index]),
        );

    },);

  }


  @override
  Widget buildSuggestions(BuildContext context) {
     List<String>matchQuery=[];

    // ignore: unused_local_variable
    for(var shops in StoreList){
      if (shops.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(shops);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index) {

      return ListTile(
        title:Text(matchQuery[index]),
        );

    },
    
    );

  }
  }




