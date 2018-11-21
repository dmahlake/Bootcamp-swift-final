import Foundation

extension Array
{
  mutating func shuffle()
  {
        for i in indices
        {
           let j = Int(arc4random_uniform(UInt32(self.count)))
           if (j != i)
           {
               self.swapAt(i,j)
           }
       }
  }
}

class Deck : NSObject
{
	static let allSpades    : [Card] = Value.allValue.map({Card(Color:Color.spade, Value:$0)})
    static let allHearts    : [Card] = Value.allValue.map({Card(Color:Color.heart, Value:$0)})
    static let allClubs     : [Card] = Value.allValue.map({Card(Color:Color.club, Value:$0)})
    static let allDiamonds  : [Card] = Value.allValue.map({Card(Color:Color.diamond, Value:$0)})
    static let allCard     : [Card] = allSpades + allHearts + allClubs + allDiamonds
}

