class Film {
  String name;
  String description;
  String photo;
  String year;
  String score;
  String duration;
  String director;
  String producer;

  Film({
    required this.name,
    required this.description,
    required this.photo,
    required this.year,
    required this.score,
    required this.duration,
    required this.director,
    required this.producer,
  });
}


var filmList = [
  Film(
      name : "Castle in the Sky",
      description : "The orphan Sheeta inherited a mysterious crystal that links her to the mythical sky-kingdom of Laputa. With the help of resourceful Pazu and a rollicking band of sky pirates, she makes her way to the ruins of the once-great civilization. Sheeta and Pazu must outwit the evil Muska, who plans to use Laputa\'s science to make himself ruler of the world.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/npOnzAbLh6VOIu3naU5QaEcTepo.jpg",
      year : "1986",
      score : "95",
      duration : "124",
      director : "Hayao Miyazaki",
      producer : "Isao Takahata",
  ),
  Film(
      name : "Grave of the Fireflies",
      description : "In the latter part of World War II, a boy and his sister, orphaned when their mother is killed in the firebombing of Tokyo, are left to survive on their own in what remains of civilian life in Japan. The plot follows this boy and his sister as they do their best to survive in the Japanese countryside, battling hunger, prejudice, and pride in their own quiet, personal battle.",
      photo : 	"https://image.tmdb.org/t/p/w600_and_h900_bestv2/qG3RYlIVpTYclR9TYIsy8p7m7AT.jpg",
      year : "1988",
      score : "97",
      duration : "89",
      director : "Isao Takahata",
      producer : "Toru Hara",
  ),
  Film(
      name : "My Neighbor Totoro",
      description : "Two sisters move to the country with their father in order to be closer to their hospitalized mother, and discover the surrounding trees are inhabited by Totoros, magical spirits of the forest. When the youngest runs away from home, the older sister seeks help from the spirits to find her.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/rtGDOeG9LzoerkDGZF9dnVeLppL.jpg",
      year : "1988",
      score : "93",
      duration : "86",
      director : "Hayao Mizaki",
      producer : "Hayao Mizaki",
  ),
  Film(
      name : "Kiki's Delivery Service",
      description : "A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/7nO5DUMnGUuXrA4r2h6ESOKQRrx.jpg",
      year : "1989",
      score : "96",
      duration : "102",
      director : "Hayao Mizaki",
      producer : "Hayao Mizaki",
  ),
  Film(
      name : "Only Yesterday",
      description : "It’s 1982, and Taeko is 27 years old, unmarried, and has lived her whole life in Tokyo. She decides to visit her family in the countryside, and as the train travels through the night, memories flood back of her younger years: the first immature stirrings of romance, the onset of puberty, and the frustrations of math and boys. At the station she is met by young farmer Toshio, and the encounters with him begin to reconnect her to forgotten longings. In lyrical switches between the present and the past, Taeko contemplates the arc of her life, and wonders if she has been true to the dreams of her childhood self.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/xjJU6rwzLX7Jk8HFQfVW6H5guMC.jpg",
      year : "1991",
      score : "100",
      duration : "118",
      director : "Isao Takahata",
      producer : "Toshio Suzuki",
  ),
  Film(
      name : "Porco Rosso",
      description : "Porco Rosso, known in Japan as Crimson Pig (Kurenai no Buta) is the sixth animated film by Hayao Miyazaki and released in 1992. You\'re introduced to an Italian World War I fighter ace, now living as a freelance bounty hunter chasing \'air pirates\' in the Adriatic Sea. He has been given a curse that changed his head to that of a pig. Once called Marco Pagot, he is now known to the world as \'Porco Rosso\', Italian for \'Red Pig.\'",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/byKAndF6KQSDpGxp1mTr23jPbYp.jpg",
      year : "1992",
      score : "94",
      duration : "93",
      director : "Hayao Mizaki",
      producer : "Toshio Suzuki",
  ),
  Film(
      name : "Pom Poko",
      description : "As the human city development encroaches on the raccoon population\'s forest and meadow habitat, the raccoons find themselves faced with the very real possibility of extinction. In response, the raccoons engage in a desperate struggle to stop the construction and preserve their home.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/kowo9E1e1JcWLXj9cCvAOFZcy5n.jpg",
      year : "1994",
      score : "78",
      duration : "119",
      director : "Isao Takahata",
      producer : "Toshio Suzuki",
  ),
  Film(
      name : "Whisper of the Heart",
      description : "Shizuku lives a simple life, dominated by her love for stories and writing. One day she notices that all the library books she has have been previously checked out by the same person: \'Seiji Amasawa\'. Curious as to who he is, Shizuku meets a boy her age whom she finds infuriating, but discovers to her shock that he is her \'Prince of Books\'. As she grows closer to him, she realises that he merely read all those books to bring himself closer to her. The boy Seiji aspires to be a violin maker in Italy, and it is his dreams that make Shizuku realise that she has no clear path for her life. Knowing that her strength lies in writing, she tests her talents by writing a story about Baron, a cat statuette belonging to Seiji\'s grandfather.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/5E3Hvbu0bg38ouYf6chGftVGqZ7.jpg",
      year : "1995",
      score : "91",
      duration : "111",
      director : "Yoshifumi Kondo",
      producer : "Toshio Suzuki",
  ),
  Film(
      name : "Princess Mononoke",
      description : "Ashitaka, a prince of the disappearing Ainu tribe, is cursed by a demonized boar god and must journey to the west to find a cure. Along the way, he encounters San, a young human woman fighting to protect the forest, and Lady Eboshi, who is trying to destroy it. Ashitaka must find a way to bring balance to this conflict.",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/jHWmNr7m544fJ8eItsfNk8fs2Ed.jpg",
      year : "1997",
      score : "92",
      duration : "134",
      director : "Hayao Miyazaki",
      producer : "Toshio Suzuki",
  ),
  Film(
      name : "Spirited Away",
      description : "Spirited Away is an Oscar winning Japanese animated film about a ten year old girl who wanders away from her parents along a path that leads to a world ruled by strange and unusual monster-like animals. Her parents have been changed into pigs along with others inside a bathhouse full of these creatures. Will she ever see the world how it once was?",
      photo : "https://image.tmdb.org/t/p/w600_and_h900_bestv2/39wmItIWsg5sZMyRUHLkWBcuVCM.jpg",
      year : "2001",
      score : "97",
      duration : "124",
      director : "Hayao Miyazaki",
      producer : "Toshio Suzuki",
  ),
  Film(
    name : "Howl's Moving Castle",
    description: "When Sophie, a shy young woman, is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking home.",
    photo: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/TkTPELv4kC3u1lkloush8skOjE.jpg",
    year: "2004",
    score: "87",
    duration: "119",
    director: "Hayao Miyazaki",
    producer: "Toshio Suzuki",
  ),
  Film(
    name : 	"Ponyo",
    description: 	"The son of a sailor, 5-year old Sosuke lives a quiet life on an oceanside cliff with his mother Lisa. One fateful day, he finds a beautiful goldfish trapped in a bottle on the beach and upon rescuing her, names her Ponyo. But she is no ordinary goldfish. The daughter of a masterful wizard and a sea goddess, Ponyo uses her father's magic to transform herself into a young girl and quickly falls in love with Sosuke, but the use of such powerful sorcery causes a dangerous imbalance in the world. As the moon steadily draws nearer to the earth and Ponyo's father sends the ocean's mighty waves to find his daughter, the two children embark on an adventure of a lifetime to save the world and fulfill Ponyo's dreams of becoming human.",
    photo: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/mikKSEdk5kLhflWXbp4S5mmHsDo.jpg",
    year: "2008",
    score: "92",
    duration: "100",
    director: "Hayao Miyazaki",
    producer: "Toshio Suzuki",
  )
];

