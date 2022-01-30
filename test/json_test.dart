import 'package:flutter_test/flutter_test.dart';
import 'package:news_app_test/json_parsing.dart';

void main() {
  test("parses topstories.json", () {
    const jsonString =
        "[30124569,30129571,30128379,30135346,30114787,30125730,30136831,30132612,30134790,30117637,30136320,30112906,30134916,30128627,30136251,30119970,30123773,30132947,30098855,30134500,30111373,30134135,30124253,30099207,30128061,30114592,30110655,30134058,30137306,30113170,30131628,30097586,30112547,30131719,30135264,30130251,30135758,30136366,30120732,30137315,30134357,30135176,30113312,30128740,30130274,30128011,30136921,30131165,30127615,30129911,30137116,30125037,30136835,30096930,30126118,30130938,30130852,30117378,30118686,30103179,30126540,30129969,30113320,30130315,30100897,30129027,30123096,30113906,30129669,30126546,30128451,30112151,30130535,30107669,30132560,30129560,30127884,30111000,30123982,30120302,30128265,30129636,30127523,30127289,30131847,30123232,30127935,30107133,30117543,30126152,30125064,30124101,30129971,30128723,30127785,30135852,30123418,30109233,30124262,30132492,30135771,30126291,30126584,30120927,30113080,30126744,30124941,30131065,30134416,30111578,30133705,30097830,30120230,30127088,30135594,30130142,30101411,30117423,30134762,30097894,30113837,30116433,30118305,30120799,30126434,30097023,30119891,30125504,30125970,30127601,30101456,30107002,30133254,30133770,30118494,30128607,30126839,30126706,30120731,30125633,30116262,30120590,30115187,30107540,30124754,30130836,30122796,30115350,30124679,30096997,30121476,30099225,30124285,30119285,30131582,30118276,30111516,30097983,30119673,30132253,30114735,30119421,30103421,30134979,30120664,30118273,30096646,30132608,30120733,30124021,30129126,30126659,30126602,30118086,30129394,30097999,30110816,30096674,30131373,30128232,30132124,30119687,30122418,30096469,30118560,30097765,30133181,30131926,30103906,30114856,30114358,30114080,30099540,30125598,30131928,30112595,30131449,30109955,30121045,30099634,30117383,30108998,30117700,30103401,30131548,30101404,30112664,30130965,30125005,30131392,30126086,30116611,30099347,30128435,30120457,30126171,30115132,30115214,30118257,30127723,30130163,30101512,30122572,30128362,30134784,30112572,30121546,30107750,30099408,30117868,30135775,30114737,30133362,30121255,30114344,30130718,30134291,30121542,30118881,30119165,30121354,30096822,30101862,30129665,30100427,30128865,30103306,30105932,30112416,30106502,30119531,30105431,30102240,30132432,30132410,30130902,30121581,30122128,30101193,30096538,30116530,30118813,30117388,30128726,30127673,30119333,30130508,30131130,30099747,30103085,30103728,30099740,30134922,30120759,30128198,30124490,30127550,30097812,30122011,30101163,30097261,30116668,30127710,30130387,30134364,30110514,30119502,30099648,30122252,30130255,30096321,30099606,30113521,30109294,30099877,30107687,30119998,30098857,30118758,30128580,30135799,30096955,30135531,30131458,30114459,30121290,30121205,30106187,30130241,30125829,30114066,30123845,30099694,30104292,30099010,30114173,30105538,30133913,30109480,30096844,30131681,30077000,30107031,30132637,30111237,30119088,30135086,30128604,30123211,30104505,30100077,30118510,30097371,30132227,30125126,30104179,30129410,30133398,30125372,30105449,30131927,30125597,30098671,30105787,30098607,30124812,30132953,30132937,30124739,30119844,30105189,30119800,30129864,30102122,30114999,30105658,30131813,30115078,30130993,30096565,30111033,30122376,30095521,30125144,30108641,30124250,30135554,30109879,30103775,30124000,30101446,30106812,30132217,30118373,30117540,30127432,30128872,30123997,30100137,30108316,30102372,30128430,30124522,30099572,30104783,30116199,30129572,30128008,30127969,30126155,30108267,30104399,30129685,30111791,30119029,30131488,30117895,30131473,30122204,30134867,30110754,30131385,30095366,30124037,30132137,30129106,30131172,30122435,30114522,30128766,30119664,30103500,30120768,30130831,30110091,30118537,30121753,30115137,30109762,30127006,30123807,30132973,30125218,30109338,30109122,30120901,30114252,30104464,30100408,30114996,30114343,30125212,30114210,30125179,30113544,30099997,30119925,30125867,30125128,30113513,30127361,30107607,30101651,30129751,30129745,30118910,30131660,30131742,30125779,30118450,30132606,30121178,30123182,30111884,30117500,30108108,30103210,30122862,30117131,30117109,30117078,30120762,30122867,30121615,30107468,30125123,30131734,30126390,30123522,30124234,30095478,30115492,30125946,30109187,30115066,30104624,30128043,30122020,30120322,30109626,30119993,30119936,30117559,30115642,30124899,30113979,30115410,30116878,30124432,30113184,30118501,30107653,30112895,30113380,30112861,30120065,30115593,30118818,30123212,30108209]";

    expect(parseTopStories(jsonString).first, 30124569);
  });

  test("parses item.json", () {
    const jsonString =
        """{ "by": "dhouston", "descendants": 71, "id": 8863, "kids": [ 9224, 8917, 8952, 8958, 8884, 8887, 8869, 8873, 8940, 8908, 9005, 9671, 9067, 9055, 8865, 8881, 8872, 8955, 10403, 8903, 8928, 9125, 8998, 8901, 8902, 8907, 8894, 8870, 8878, 8980, 8934, 8943, 8876 ], "score": 104, "time": 1175714200, "title": "My YC app: Dropbox - Throw away your USB drive", "type": "story", "url": "http://www.getdropbox.com/u/2/screencast.html" }""";

    expect(parseArticle(jsonString).by, "dhouston");
  });
}