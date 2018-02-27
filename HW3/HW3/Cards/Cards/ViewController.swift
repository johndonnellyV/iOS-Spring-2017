//
//  ViewController.swift
//  Cards
//
//  Created by John Donnelly on 2/15/17.
//  Copyright © 2017 CWRU iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var TextField1: UITextField!
    var deckNum: Int! = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func generateDecks() {
        generateXDecks(numbDecks: deckNum)
    }
    func shuffleDecks(){
        var counter = 0
        for _ in decks{
            let rand = Int(arc4random_uniform(UInt32((52 * deckNum) - counter))) + counter
            if (counter == rand){
                
            }
            else{
            swap(&decks[counter], &decks[rand])
            counter = counter + 1
            }
        }
        for x in decks{
            print(x.simpleDescription())
        }
    }

    @IBAction func EnterButton(_ sender: UIButton) {
        deckNum = Int(TextField1.text!)
        generateDecks()
    }
    @IBAction func ShuffleButton(_ sender: UIButton) {
        shuffleDecks()
    }
}
var decks: [Card] = []

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

//Method to generate the decks
func generateXDecks(numbDecks: Int)
{
    var numberOfDecks = numbDecks
    var multipleDecks = [Card]()
    //Arrays let the actual enum value not matter after here
    let suitArray = [Suit.Diamonds, Suit.Clubs, Suit.Spades, Suit.Hearts]
    //Arrays let the actual enum value not matter after here
    let rankArray = [Rank.Ace, Rank.Two, Rank.Three, Rank.Four, Rank.Five, Rank.Six, Rank.Seven, Rank.Eight, Rank.Nine, Rank.Ten, Rank.Jack, Rank.Queen, Rank.King]
    
    //will create the number of decks desired
    while numberOfDecks > 0
    {
        //loops through all the ranks and suits
        for rank in rankArray
        {
            for suit in suitArray
            {
                //prints out the order the cards are added to the deck
                print("Card: " + Card(rank: rank, suit: suit).simpleDescription())
                
                multipleDecks.append(Card(rank: rank, suit: suit))
            }
        }
        numberOfDecks = numberOfDecks - 1
    }
     decks =  multipleDecks
}


enum Rank: Int {
    case Ace = 1
    case Two, Three, Four
    case Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

var card = Rank.Three
var cardRawValue = card.rawValue

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
            //case .Clubs:
        //    return "clubs"
        case .Clubs:
            return "clubs"
        }
    }
}
var hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

// the following is ok since we know the type of hearts



    


