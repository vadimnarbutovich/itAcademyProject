enum Chess {
  case korol(color: Color, place: String)
  case ferz(color: Color, place: String)
  case ladia(color: Color, place: String)
  case kon(color: Color, place: String)
  case slon(color: Color, place: String)
  case peshka(color: Color, place: String)

  enum Color {
    case black
    case white
  }
}

let whiteChessPieces = [
  Chess.slon(color: .white, place: "A1"),
  Chess.kon(color: .white, place: "B1"),
  Chess.ladia(color: .white, place: "C1"),
  Chess.ferz(color: .white, place: "D1"),
  Chess.korol(color: .white, place: "E1"),
  Chess.ladia(color: .white, place: "F1"),
  Chess.kon(color: .white, place: "G1"),
  Chess.slon(color: .white, place: "H1"),
  Chess.peshka(color: .white, place: "A2"),
  Chess.peshka(color: .white, place: "B2"),
  Chess.peshka(color: .white, place: "C2"),
  Chess.peshka(color: .white, place: "D2"),
  Chess.peshka(color: .white, place: "E2"),
  Chess.peshka(color: .white, place: "F2"),
  Chess.peshka(color: .white, place: "G2"),
  Chess.peshka(color: .white, place: "H2"),
]

let blackChessPieces = [
  Chess.slon(color: .black, place: "A8"),
  Chess.kon(color: .black, place: "B8"),
  Chess.ladia(color: .black, place: "C8"),
  Chess.ferz(color: .black, place: "D8"),
  Chess.korol(color: .black, place: "E8"),
  Chess.ladia(color: .black, place: "F8"),
  Chess.kon(color: .black, place: "G8"),
  Chess.slon(color: .black, place: "H8"),
  Chess.peshka(color: .black, place: "A7"),
  Chess.peshka(color: .black, place: "B7"),
  Chess.peshka(color: .black, place: "C7"),
  Chess.peshka(color: .black, place: "D7"),
  Chess.peshka(color: .black, place: "E7"),
  Chess.peshka(color: .black, place: "F7"),
  Chess.peshka(color: .black, place: "G7"),
  Chess.peshka(color: .black, place: "H7"),
]

func emptyСells() {
  var сells = [String]()
    let rows = ["3", "4", "5", "6"]
    let columns = ["A", "B", "C", "D", "E", "F", "G", "H"]
  for row in rows.reversed() {
        for column in columns {
          сells.append(" " + column + row)
        }
      print(сells.joined(separator: " "))
      сells = []
    }
}

func printChessBoard(chessPieces: [Chess]) {
  var rowBlackFigures = [String]()
  var rowWhiteFigures = [String]()
  var rowBlackPawns = [String]()
  var rowWhitePawns = [String]()

  for piece in chessPieces {
    switch piece {
    case let .korol(color, place):
      let emoji = (color == .black) ? "♚"+"\(place)" : "♔"+"\(place)"
      (color == .black) ? rowBlackFigures.append(emoji) : rowWhiteFigures.append(emoji)
    case let .ferz(color, place):
      let emoji = (color == .black) ? "♛"+"\(place)" : "♕"+"\(place)"
      (color == .black) ? rowBlackFigures.append(emoji) : rowWhiteFigures.append(emoji)
    case let .ladia(color, place):
      let emoji = (color == .black) ? "♜"+"\(place)" : "♖"+"\(place)"
      (color == .black) ? rowBlackFigures.append(emoji) : rowWhiteFigures.append(emoji)
    case let .slon(color, place):
      let emoji = (color == .black) ? "♝"+"\(place)" : "♗"+"\(place)"
      (color == .black) ? rowBlackFigures.append(emoji) : rowWhiteFigures.append(emoji)
    case let .kon(color, place):
      let emoji = (color == .black) ? "♞"+"\(place)" : "♘"+"\(place)"
      (color == .black) ? rowBlackFigures.append(emoji) : rowWhiteFigures.append(emoji)
    case let .peshka(color, place):
      let emoji = (color == .black) ? "♟"+"\(place)" : "♙"+"\(place)"
      (color == .black) ? rowBlackPawns.append(emoji) : rowWhitePawns.append(emoji)
    }
  }

  print(rowBlackFigures.joined(separator: " "))
  print(rowBlackPawns.joined(separator: " "))
  emptyСells()
  print(rowWhitePawns.joined(separator: " "))
  print(rowWhiteFigures.joined(separator: " "))
}

printChessBoard(chessPieces: whiteChessPieces + blackChessPieces)
