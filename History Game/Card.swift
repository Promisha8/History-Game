//
//  Card.swift
//  History Game
//
//  Created by iD Student on 8/9/17.
//  Copyright © 2017 com.iDtech. All rights reserved.
//

import Foundation
import SpriteKit

class Card : SKSpriteNode{
    var letter : String = ""
    var correctLetter : [String]
    var imageName : String
    
    init(){
        correctLetter = [""]
        imageName = ""
        super.init(texture: nil, color: UIColor.white, size: CGSize(width: 20, height: 20))
    }
    
    convenience init(correctLetter : [String], imageName : String){
        self.init()
        
        
        self.correctLetter = correctLetter
        self.imageName = imageName
        self.texture = SKTexture(imageNamed: imageName)
    }
    
    convenience init(correctLetter : [String], imageName : String, currentLetter : String){
        self.init()
        
        self.correctLetter = correctLetter
        self.imageName = imageName
        self.letter = currentLetter
        self.texture = SKTexture(imageNamed: imageName)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var cards : [[Card]] = [
    [
        //Creators
        
        Card(correctLetter: ["A"], imageName: "А"),
        Card(correctLetter: ["A"], imageName: "Б"),
        Card(correctLetter: ["A"], imageName: "В"),
        Card(correctLetter: ["A"], imageName: "Г"),
        Card(correctLetter: ["A"], imageName: "Д"),
        Card(correctLetter: ["A"], imageName: "Е"),
        Card(correctLetter: ["A"], imageName: "Ё"),
        Card(correctLetter: ["A"], imageName: "Ж"),
        Card(correctLetter: ["A"], imageName: "З"),
        Card(correctLetter: ["A"], imageName: "И"),
        Card(correctLetter: ["A"], imageName: "Й"),
        Card(correctLetter: ["A"], imageName: "К"),
        Card(correctLetter: ["A"], imageName: "Л"),
        Card(correctLetter: ["A"], imageName: "М"),
        Card(correctLetter: ["A"], imageName: "Н"),
        Card(correctLetter: ["A"], imageName: "О"),
        Card(correctLetter: ["A"], imageName: "П"),
        Card(correctLetter: ["A"], imageName: "Р"),
        Card(correctLetter: ["A"], imageName: "С"),
        Card(correctLetter: ["A"], imageName: "Т"),
        Card(correctLetter: ["A"], imageName: "У"),
        Card(correctLetter: ["A"], imageName: "Ф"),
        Card(correctLetter: ["A"], imageName: "Х"),
        Card(correctLetter: ["A"], imageName: "Ц"),
        Card(correctLetter: ["A"], imageName: "Ч"),
        Card(correctLetter: ["A"], imageName: "Ш"),
        Card(correctLetter: ["A"], imageName: "Щ"),
        Card(correctLetter: ["A"], imageName: "Ъ"),
        Card(correctLetter: ["A"], imageName: "Ы"),
        Card(correctLetter: ["A"], imageName: "Ь"),
        Card(correctLetter: ["A"], imageName: "Э"),
        Card(correctLetter: ["A"], imageName: "Ю"),
        Card(correctLetter: ["A"], imageName: "Я"),
        Card(correctLetter: ["A"], imageName: "АА"),
        Card(correctLetter: ["A"], imageName: "АБ"),
        Card(correctLetter: ["A"], imageName: "АВ"),
        Card(correctLetter: ["A"], imageName: "АГ"),
        Card(correctLetter: ["A"], imageName: "АД"),
        Card(correctLetter: ["A"], imageName: "АЕ"),
        Card(correctLetter: ["A"], imageName: "АЁ"),
        Card(correctLetter: ["A"], imageName: "АЖ"),
        Card(correctLetter: ["A"], imageName: "АЗ"),
        
        ],
    [
        //Inventions
        
        Card(correctLetter: ["А"], imageName: "а"),
        Card(correctLetter: ["Б"], imageName: "б"),
        Card(correctLetter: ["В"], imageName: "в"),
        Card(correctLetter: ["Г"], imageName: "г"),
        Card(correctLetter: ["Д"], imageName: "д"),
        Card(correctLetter: ["Е"], imageName: "е"),
        Card(correctLetter: ["Ё"], imageName: "ё"),
        Card(correctLetter: ["Ж"], imageName: "ж"),
        Card(correctLetter: ["З"], imageName: "з"),
        Card(correctLetter: ["И"], imageName: "и"),
        Card(correctLetter: ["Й"], imageName: "й"),
        Card(correctLetter: ["К"], imageName: "к"),
        Card(correctLetter: ["Л"], imageName: "л"),
        Card(correctLetter: ["М"], imageName: "м"),
        Card(correctLetter: ["Н"], imageName: "н"),
        Card(correctLetter: ["О"], imageName: "о"),
        Card(correctLetter: ["П"], imageName: "п"),
        Card(correctLetter: ["Р"], imageName: "р"),
        Card(correctLetter: ["С"], imageName: "с"),
        Card(correctLetter: ["Т"], imageName: "т"),
        Card(correctLetter: ["У"], imageName: "у"),
        Card(correctLetter: ["Ф"], imageName: "ф"),
        Card(correctLetter: ["Х"], imageName: "х"),
        Card(correctLetter: ["Ц"], imageName: "ц"),
        Card(correctLetter: ["Ч"], imageName: "ч"),
        Card(correctLetter: ["Ш"], imageName: "ш"),
        Card(correctLetter: ["Щ"], imageName: "щ"),
        Card(correctLetter: ["Ъ"], imageName: "ъ"),
        Card(correctLetter: ["Э"], imageName: "э"),
        Card(correctLetter: ["Ю"], imageName: "ю"),
        Card(correctLetter: ["Я"], imageName: "я"),
        Card(correctLetter: ["АА"], imageName: "аа"),
        Card(correctLetter: ["АБ"], imageName: "аб"),
        Card(correctLetter: ["АВ"], imageName: "ав"),
        Card(correctLetter: ["АГ"], imageName: "аг"),
        Card(correctLetter: ["АД"], imageName: "ад"),
        Card(correctLetter: ["АЕ"], imageName: "ае"),
        Card(correctLetter: ["АЁ"], imageName: "аё"),
        Card(correctLetter: ["АЖ"], imageName: "аж"),
        Card(correctLetter: ["АЗ"], imageName: "аз"),
        
    ],
    [
      //Countries
        
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "1"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "2"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "3"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "4"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "5"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "6"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "7"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "8"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "9"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "10"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "11"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "12"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "13"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "14"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "15"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "16"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "17"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "18"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "19"),
        Card(correctLetter: ["Т"], imageName: "20"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "21"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "22"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "23"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "24"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "25"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "26"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "27"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "28"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "29"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "30"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "31"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "32"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "33"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "34"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "35"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "36"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "37"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "38"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "39"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "40"),
        
    ],
    [
        //Rulers
        
        Card(correctLetter: ["А","С"], imageName: "I"),
        Card(correctLetter: ["Б"], imageName: "II"),
        Card(correctLetter: ["В","Ю"], imageName: "III"),
        Card(correctLetter: ["Г", "Й"], imageName: "IV"),
        Card(correctLetter: ["Д", "К",], imageName: "V"),
        Card(correctLetter: ["Е", "З", "О"], imageName: "VI"),
        Card(correctLetter: ["Ё", "Ж"], imageName: "VII"),
        Card(correctLetter: ["Ё", "Ж"], imageName: "VIII"),
        Card(correctLetter: ["Е", "З", "О"], imageName: "IX"),
        Card(correctLetter: ["И","Р"], imageName: "X"),
        Card(correctLetter: ["Г", "Й"], imageName: "XI"),
        Card(correctLetter: ["Д", "К",], imageName: "XII"),
        Card(correctLetter: ["Л", "Ф"], imageName: "XIII"),
        Card(correctLetter: ["М", "Н"], imageName: "XIV"),
        Card(correctLetter: ["М", "Н"], imageName: "XV"),
        Card(correctLetter: ["Е", "З", "О"], imageName: "XVI"),
        Card(correctLetter: ["П"], imageName: "XVII"),
        Card(correctLetter: ["И","Р"], imageName: "XVIII"),
        Card(correctLetter: ["А","С"], imageName: "XIX"),
        Card(correctLetter: ["Т"], imageName: "XX"),
        Card(correctLetter: ["У"], imageName: "XXI"),
        Card(correctLetter: ["Л", "Ф"], imageName: "XXII"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXIII"),
        Card(correctLetter: ["Ц"], imageName: "XXIV"),
        Card(correctLetter: ["Ч"], imageName: "XXV"),
        Card(correctLetter: ["Ш"], imageName: "XXVI"),
        Card(correctLetter: ["Щ"], imageName: "XXVII"),
        Card(correctLetter: ["Ъ"], imageName: "XXVIII"),
        Card(correctLetter: ["Э"], imageName: "XXIX"),
        Card(correctLetter: ["В","Ю"], imageName: "XXX"),
        Card(correctLetter: ["Я"], imageName: "XXXI"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXII"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXIII"),
        Card(correctLetter: ["АВ", "АЁ"], imageName: "XXXIV"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXXV"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXXVI"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXXVII"),
        Card(correctLetter: ["АВ", "АЁ"], imageName: "XXXVIII"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXIX"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXX"),
        
        
    ],
    [
        //Years
        
        Card(correctLetter: ["А"], imageName: "A"),
        Card(correctLetter: ["Б"], imageName: "B"),
        Card(correctLetter: ["В"], imageName: "C"),
        Card(correctLetter: ["Г"], imageName: "D"),
        Card(correctLetter: ["Д"], imageName: "E"),
        Card(correctLetter: ["Е"], imageName: "F"),
        Card(correctLetter: ["Ё", "С"], imageName: "G"),
        Card(correctLetter: ["Ж"], imageName: "H"),
        Card(correctLetter: ["З"], imageName: "I"),
        Card(correctLetter: ["И"], imageName: "J"),
        Card(correctLetter: ["Й"], imageName: "K"),
        Card(correctLetter: ["К"], imageName: "L"),
        Card(correctLetter: ["Л"], imageName: "M"),
        Card(correctLetter: ["М", "Н"], imageName: "N"),
        Card(correctLetter: ["М", "Н"], imageName: "O"),
        Card(correctLetter: ["О"], imageName: "P"),
        Card(correctLetter: ["П"], imageName: "Q"),
        Card(correctLetter: ["Р"], imageName: "R"),
        Card(correctLetter: ["Ё", "С"], imageName: "S"),
        Card(correctLetter: ["Т"], imageName: "T"),
        Card(correctLetter: ["У"], imageName: "U"),
        Card(correctLetter: ["Ф"], imageName: "V"),
        Card(correctLetter: ["Х"], imageName: "W"),
        Card(correctLetter: ["Ц"], imageName: "X"),
        Card(correctLetter: ["Ч"], imageName: "Y"),
        Card(correctLetter: ["Ш"], imageName: "Z"),
        Card(correctLetter: ["Щ"], imageName: "AA"),
        Card(correctLetter: ["Ъ"], imageName: "AB"),
        Card(correctLetter: ["Э"], imageName: "AC"),
        Card(correctLetter: ["Ю", "АБ"], imageName: "AD"),
        Card(correctLetter: ["Я"], imageName: "AE"),
        Card(correctLetter: ["АА"], imageName: "AF"),
        Card(correctLetter: ["Ю", "АБ"], imageName: "AG"),
        Card(correctLetter: ["АВ"], imageName: "AH"),
        Card(correctLetter: ["АГ"], imageName: "AI"),
        Card(correctLetter: ["АД"], imageName: "AJ"),
        Card(correctLetter: ["АЕ"], imageName: "AK"),
        Card(correctLetter: ["АЁ"], imageName: "AL"),
        Card(correctLetter: ["АЖ"], imageName: "AM"),
        Card(correctLetter: ["АЗ"], imageName: "AN"),
        
 ],
 ]
