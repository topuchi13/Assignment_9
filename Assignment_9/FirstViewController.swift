//
//  ViewController.swift
//  Assignment_9
//
//  Created by Nika Topuria on 02.10.21.
//


//შექმენით 2 კონტროლერი
//პირველ კონტროლერზე გქონდეთ ლეიბლი ეკრანის ცენტრში, Portrait-ზეც და Landscape-ზეც, და ღილაკი რომლითაც გახსნით მეორე გვერდს
//მეორე კონტროლერზე გქონდეთ ტექსტფილდი და ღილაკი. ღილაკზე დაჭერისას ტექსტფილდში არსებული ტექსტი უნდა დაესეტოს პირველი გვერდის ლეიბლზე.
//აუცილებელია გამოიყენოთ Delegate პატერნი



import UIKit

class FirstViewController: UIViewController, displayText {
    
    @IBOutlet var textLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        secondVC.delegate = self // sets self as a "SecondViewController" delegate.
    }

    // implements "showThis" function to conform with "displayText" Protocol
    func showThis(new text: String) {
        textLabel.text = text
    }
}
