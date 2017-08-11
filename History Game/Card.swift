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
    var field = UITextField()
    
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
        Card(correctLetter: ["A"], imageName: "Е-1"),
        Card(correctLetter: ["A"], imageName: "ABC"),
        Card(correctLetter: ["A"], imageName: "Ж"),
        Card(correctLetter: ["A"], imageName: "З"),
        Card(correctLetter: ["A"], imageName: "И"),
        Card(correctLetter: ["A"], imageName: "YY"),
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
        Card(correctLetter: ["A"], imageName: "Э"),
        Card(correctLetter: ["A"], imageName: "Ю"),
        Card(correctLetter: ["A"], imageName: "Я"),
        Card(correctLetter: ["A"], imageName: "АА"),
        Card(correctLetter: ["A"], imageName: "АБ"),
        Card(correctLetter: ["A"], imageName: "АВ"),
        Card(correctLetter: ["A"], imageName: "АГ"),
        Card(correctLetter: ["A"], imageName: "АД"),
        Card(correctLetter: ["A"], imageName: "АЕ"),
        Card(correctLetter: ["A"], imageName: "EA"),
        Card(correctLetter: ["A"], imageName: "АЖ"),
        Card(correctLetter: ["A"], imageName: "АЗ"),
        
        ],
    [
        //Inventions
        
        Card(correctLetter: ["АЕ"], imageName: "ае-3"),
        Card(correctLetter: ["АЁ"], imageName: "eo"),
        
        Card(correctLetter: ["АВ"], imageName: "ав-1"),
        Card(correctLetter: ["АГ"], imageName: "аг-1"),
        
        Card(correctLetter: ["АЖ"], imageName: "аж-1"),
        Card(correctLetter: ["АЗ"], imageName: "аз-1"),
        
        Card(correctLetter: ["А"], imageName: "а-1"),
        
        Card(correctLetter: ["Л"], imageName: "л-1"),
        Card(correctLetter: ["М"], imageName: "м-1"),
        Card(correctLetter: ["Н"], imageName: "н-1"),
        
        Card(correctLetter: ["Э"], imageName: "э-1"),
        Card(correctLetter: ["Ю"], imageName: "ю-1"),
        Card(correctLetter: ["Я"], imageName: "я-1"),
        
        
        Card(correctLetter: ["О"], imageName: "о-1"),
        Card(correctLetter: ["П"], imageName: "п-1"),
        Card(correctLetter: ["Р"], imageName: "р-1"),
        Card(correctLetter: ["С"], imageName: "с-1"),
        Card(correctLetter: ["Д"], imageName: "dd"),
        Card(correctLetter: ["Е"], imageName: "е-2"),
        
   
    
        
        Card(correctLetter: ["Ё"], imageName: "abcc"),
        Card(correctLetter: ["Ж"], imageName: "ж-1"),
        
       
        Card(correctLetter: ["Т"], imageName: "т-1"),
        Card(correctLetter: ["У"], imageName: "у-1"),
        Card(correctLetter: ["Ф"], imageName: "ф-1"),
       
        Card(correctLetter: ["Щ"], imageName: "щ-1"),
        Card(correctLetter: ["Ъ"], imageName: "ъ-1"),
       
        Card(correctLetter: ["АА"], imageName: "аа-1"),
        Card(correctLetter: ["АБ"], imageName: "аб-1"),
       
        Card(correctLetter: ["АД"], imageName: "ад-1"),
        
        
        Card(correctLetter: ["З"], imageName: "з-1"),
        Card(correctLetter: ["И"], imageName: "и-2"),
        Card(correctLetter: ["Й"], imageName: "ye"),
        Card(correctLetter: ["К"], imageName: "к-1"),
        
    
        
        Card(correctLetter: ["Б"], imageName: "б-1"),
        Card(correctLetter: ["В"], imageName: "в-1"),
        Card(correctLetter: ["Г"], imageName: "gg"),
        
        Card(correctLetter: ["Х"], imageName: "х-1"),
        Card(correctLetter: ["Ц"], imageName: "ц-1"),
        Card(correctLetter: ["Ч"], imageName: "ч-1"),
        Card(correctLetter: ["Ш"], imageName: "ш-1"),
        
        
    ],
    [
      //Countries
        
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "36"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "37"),
       
        
        
        
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "1"),
  
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "23"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "24"),
        
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "34"),
        
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "38"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "39"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "40"),
        
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "35"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "6"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "7"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "8"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "9"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "10"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "11"),
        
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "28"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "29"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "30"),
        
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "12"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "13"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "14"),
        
        
        
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "21"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "22"),
 
     
 
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "31"),
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "32"),
        
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "2"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "3"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "25"),
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "26"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "27"),
        
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "4"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "5"),
        
        
        
        Card(correctLetter: ["Х", "Я", "Ъ", "АА", "АБ", "АВ", "АГ", "АД", "АЕ", "АЁ", "АЖ", "АЗ"], imageName: "33"),
   
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "17"),
        Card(correctLetter: ["Ё", "Ж", "И", "Л", "Р", "У", "Ф", "Ц", "Ч", "Щ", "Э"], imageName: "18"),
        Card(correctLetter: ["А", "В", "Д", "К", "С", "Ю"], imageName: "19"),
        Card(correctLetter: ["Т"], imageName: "20"),
        
        Card(correctLetter: ["Б", "Г", "Й", "М", "Н", "Ш"], imageName: "15"),
        Card(correctLetter: ["Е", "З", "О", "П"], imageName: "16"),
        
        
    ],
    [
        //Rulers
        
        Card(correctLetter: ["П"], imageName: "XVII"),
        Card(correctLetter: ["И","Р"], imageName: "XVIII"),
        Card(correctLetter: ["А","С"], imageName: "XIX"),
        Card(correctLetter: ["Т"], imageName: "XX"),
        
        
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXII"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXIII"),
        Card(correctLetter: ["АВ", "АЁ"], imageName: "XXXIV"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXXV"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXXVI"),
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXXVII"),
        
        Card(correctLetter: ["Х","АГ", "АД", "АЕ"], imageName: "XXIII"),
        Card(correctLetter: ["Ц"], imageName: "XXIV"),
        Card(correctLetter: ["Ч"], imageName: "XXV"),
        Card(correctLetter: ["Ш"], imageName: "XXVI"),
        
        Card(correctLetter: ["Д", "К",], imageName: "V"),
        Card(correctLetter: ["Е", "З", "О"], imageName: "VI"),
        Card(correctLetter: ["Ё", "Ж"], imageName: "VII"),
        Card(correctLetter: ["Ё", "Ж"], imageName: "VIII"),
     
        Card(correctLetter: ["М", "Н"], imageName: "XIV"),
        Card(correctLetter: ["М", "Н"], imageName: "XV"),
        Card(correctLetter: ["Е", "З", "О"], imageName: "XVI"),
    
        Card(correctLetter: ["У"], imageName: "XXI"),
        Card(correctLetter: ["Л", "Ф"], imageName: "XXII"),
     
        Card(correctLetter: ["Щ"], imageName: "XXVII"),
        Card(correctLetter: ["Ъ"], imageName: "XXVIII"),
        Card(correctLetter: ["Э"], imageName: "XXIX"),
        Card(correctLetter: ["В","Ю"], imageName: "XXX"),
        Card(correctLetter: ["Я"], imageName: "XXXI"),
      
        Card(correctLetter: ["АВ", "АЁ"], imageName: "XXXVIII"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXIX"),
        Card(correctLetter: ["АА", "АБ","АЖ", "АЗ"], imageName: "XXXX"),
        
        Card(correctLetter: ["А","С"], imageName: "I"),
        Card(correctLetter: ["Б"], imageName: "II"),
        Card(correctLetter: ["В","Ю"], imageName: "III"),
        Card(correctLetter: ["Г", "Й"], imageName: "IV"),
        
        Card(correctLetter: ["Е", "З", "О"], imageName: "IX"),
        Card(correctLetter: ["И","Р"], imageName: "X"),
        Card(correctLetter: ["Г", "Й"], imageName: "XI"),
        Card(correctLetter: ["Д", "К",], imageName: "XII"),
        Card(correctLetter: ["Л", "Ф"], imageName: "XIII"),
        
        
        
        
    ],
    [
        //Years
        
        
        Card(correctLetter: ["О"], imageName: "P"),
        Card(correctLetter: ["П"], imageName: "Q"),
        Card(correctLetter: ["Р"], imageName: "R"),
        
        
        Card(correctLetter: ["АЁ"], imageName: "AL"),
        Card(correctLetter: ["АЖ"], imageName: "AM"),
        Card(correctLetter: ["АЗ"], imageName: "AN"),
        
        Card(correctLetter: ["Ц"], imageName: "X (буква)"),
        Card(correctLetter: ["Ч"], imageName: "Y"),
        Card(correctLetter: ["Ш"], imageName: "Z"),
        Card(correctLetter: ["Щ"], imageName: "AA"),
        Card(correctLetter: ["Ъ"], imageName: "AB"),
        
        
        Card(correctLetter: ["Я"], imageName: "AE"),
        Card(correctLetter: ["АА"], imageName: "AF"),
        Card(correctLetter: ["Ю", "АБ"], imageName: "AG"),
        
        Card(correctLetter: ["АВ"], imageName: "AH"),
        Card(correctLetter: ["АГ"], imageName: "AI"),
        
        
        Card(correctLetter: ["А"], imageName: "A"),
  
        Card(correctLetter: ["Ж"], imageName: "H"),
        Card(correctLetter: ["З"], imageName: "I (буква)"),
      
        Card(correctLetter: ["Л"], imageName: "M"),
        Card(correctLetter: ["М", "Н"], imageName: "N"),
     
        Card(correctLetter: ["Т"], imageName: "T"),
        Card(correctLetter: ["У"], imageName: "U"),
        Card(correctLetter: ["Ф"], imageName: "V (буква)"),
        Card(correctLetter: ["Х"], imageName: "W"),
     
        Card(correctLetter: ["Э"], imageName: "AC"),
        Card(correctLetter: ["Ю", "АБ"], imageName: "AD"),
      
      
        Card(correctLetter: ["АД"], imageName: "AJ"),
        Card(correctLetter: ["АЕ"], imageName: "AK"),

        
        Card(correctLetter: ["Б"], imageName: "B"),
        Card(correctLetter: ["В"], imageName: "C"),
        Card(correctLetter: ["Г"], imageName: "D"),
        
        
        Card(correctLetter: ["Д"], imageName: "E"),
        Card(correctLetter: ["Е"], imageName: "F"),
        Card(correctLetter: ["Ё", "С"], imageName: "G"),
        
        Card(correctLetter: ["И"], imageName: "J"),
        Card(correctLetter: ["Й"], imageName: "K"),
        Card(correctLetter: ["К"], imageName: "L"),
        
        Card(correctLetter: ["М", "Н"], imageName: "O"),
        Card(correctLetter: ["Ё", "С"], imageName: "S"),
        
        
 ],
 ]
