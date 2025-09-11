class SpotifyPlaylistConstants {
  static const songPlaylists = [
    SongData(
      title: "Cincin",
      singer: "Hindia",
      coverAsset: "cincin.jpeg",
    ),
    SongData(
      title: "Everything Goes On",
      singer: "Porter Robbinson",
      coverAsset: "ego.jpg",
    ),
    SongData(
      title: "Nina",
      singer: "Feast .",
      coverAsset: "nina.jpeg",
    ),
    SongData(
      title: "Pretender",
      singer: "Official HIGE DANdism",
      coverAsset: "pretender.jpeg",
    ),
    SongData(
      title: "RISE",
      singer: "League of Legends",
      coverAsset: "rise.jpeg",
    ),
  ];
}

class SongData {
  final String title;
  final String singer;
  final String coverAsset;

  const SongData({
    required this.title,
    required this.singer,
    required this.coverAsset,
  });
}
