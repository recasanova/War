//
//  ViewController.swift
//  War
//
//  Created by Regina Casanova on 27/07/15.
//  Copyright (c) 2015 Regina Casanova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImage: UIImageView!
    
    @IBOutlet weak var secondCardImage: UIImageView!
    
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var meScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var cardNumbers = ["card1_","card2_","card3_","card4_","card5_","card6_","card7_","card8_","card9_","card11_","card12_","card13_"]
    var cardDecks = ["clubs","diamonds","hearts","spades"]
    var playerScore: Int = 0
    var computerScore: Int = 0
    var tighScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        /* FIRST METHOD - SWITCH
        
        //Random numbers for cardNumber and which deck for 1st card
        var cardNumber1 = arc4random_uniform(13)+1
        var cardDeck1 = arc4random_uniform(4)+1
        
        //Random numbers for cardNumber and which deck for 2nd card
        var cardNumber2 = arc4random_uniform(13)+1
        var cardDeck2 = arc4random_uniform(4)+1
        
        //Add the cardNumber to the string "card[number]_"
        var cardFinal1 = String(format: "card%i_", cardNumber1)
        var cardFinal2 = String(format: "card%i_", cardNumber2)
        
        //Switch for determin the name of the deck at the end of the cardFinal1 variable
        switch cardDeck1 {
            case 1:
                cardFinal1 = String(format: cardFinal1+"%@", "clubs")
            case 2:
                cardFinal1 = String(format: cardFinal1+"%@", "hearts")
            case 3:
                cardFinal1 = String(format: cardFinal1+"%@", "spades")
            default:
                cardFinal1 = String(format: cardFinal1+"%@", "diamonds")
        }
        
        //Switch for determin the name of the deck at the end of the cardFinal2 variable
        switch cardDeck2 {
            case 1:
                cardFinal2 = String(format: cardFinal2+"%@", "clubs")
            case 2:
                cardFinal2 = String(format: cardFinal2+"%@", "hearts")
            case 3:
                cardFinal2 = String(format: cardFinal2+"%@", "spades")
            default:
                cardFinal2 = String(format: cardFinal2+"%@", "diamonds")
        }
        
        //Assign the final name of the card to the UIImage to show
        self.firstCardImage.image = UIImage(named: cardFinal1)
        self.secondCardImage.image = UIImage(named: cardFinal2)
        
        END OF FIRST METHOD
        */
        
        //SECOND METHOD - ARRAY
        
        
        //Random numbers for cardNumber and which deck for 1st card
        var cardNumber1 = Int(arc4random_uniform(12))
        var cardDeck1 = Int(arc4random_uniform(4))

        //Random numbers for cardNumber and which deck for 2nd card
        var cardNumber2 = Int(arc4random_uniform(12))
        var cardDeck2 = Int(arc4random_uniform(4))
        
        var firstFinalCard = String(format: cardNumbers[cardNumber1]+"%@", cardDecks[cardDeck1])
        var secondFinalCard = String(format: cardNumbers[cardNumber2]+"%@", cardDecks[cardDeck2])
        
        //Assign the final name of the card to the UIImage to show
        self.firstCardImage.image = UIImage(named: firstFinalCard)
        self.secondCardImage.image = UIImage(named: secondFinalCard)
        
        if cardNumber1 > cardNumber2{
            playerScore++
            self.meScore.text = String(playerScore)
        }
        else if cardNumber1 == cardNumber2{
            tighScore++
        }
        else{
            computerScore++
            self.enemyScore.text = String(computerScore)
        }

    }

}

