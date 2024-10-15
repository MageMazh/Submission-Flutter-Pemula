import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/detail_screen.dart';
import 'package:submission_flutter_pemula/model/film.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Film> films = filmList;
  List<Film> filteredFilms = filmList;
  TextEditingController _searchController = TextEditingController();

  void _filterFilms(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredFilms = films;
      } else {
        filteredFilms = films
            .where(
                (film) => film.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: AppBar(
            toolbarHeight: 120,
            backgroundColor: Colors.deepPurple,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                const Text(
                  'MyGhibli',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _searchController,
                  onChanged: _filterFilms,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Explore the world of Ghibli...',
                    hintStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return GhibliFilmsList(films: filteredFilms);
            } else if (constraints.maxWidth <= 900) {
              return GhibliFilmsGrid(gridCount: 2, films: filteredFilms);
            } else {
              return GhibliFilmsGrid(gridCount: 3, films: filteredFilms);
            }
          },
        ),
      ),
    );
  }
}

class GhibliFilmsGrid extends StatelessWidget {
  final int gridCount;
  final List<Film> films;

  const GhibliFilmsGrid(
      {super.key, required this.gridCount, required this.films});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ghibli List',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple[700],
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: films.isEmpty
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Lottie.network(
                          'https://lottie.host/1501e42b-0f37-422f-b289-9aef63433d0f/3H6yClF6Vn.json',
                          width: 250,
                          height: 250,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'Ghibli not found :(',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[600],
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                : GridView.count(
                    crossAxisCount: gridCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: films.map((film) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(film: film),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                  child: Image.network(
                                    film.photo,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      film.name,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      film.description,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.orangeAccent,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "${film.score}/100",
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
          ),
        ],
      ),
    );
  }
}

class GhibliFilmsList extends StatelessWidget {
  final List<Film> films;

  const GhibliFilmsList({super.key, required this.films});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ghibli List',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple[700],
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: films.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Lottie.network(
                          'https://lottie.host/1501e42b-0f37-422f-b289-9aef63433d0f/3H6yClF6Vn.json',
                          width: 250,
                          height: 250,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          'Ghibli not found :(',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[600],
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: films.length,
                    itemBuilder: (context, index) {
                      final Film filmItem = films[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(film: filmItem),
                            ),
                          );
                        },
                        child: Card(
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                  child: Image.network(
                                    filmItem.photo,
                                    fit: BoxFit.cover,
                                    height: 150,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        filmItem.name,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        filmItem.description,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.orangeAccent,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            "${filmItem.score}/100",
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
              ),
          ),
        ],
      ),
    );
  }
}
