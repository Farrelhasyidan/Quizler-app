//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Farrel hasyidan on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text:"Apakah macbook lebih bagus dari pada tidak mempunyai laptop?", answer: "True"),
        Question(text:"Apakah bumi datar?", answer: "False"),
        Question(text:"Apakah rukun islam ada 5?", answer: "False"),
        Question(text:"Apakah 2 tambah 2 sama dengan 4?", answer: "True"),
        Question(text:"Bahasa arabnya buku adalah kitabun?", answer: "True")
        
    ]
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    mutating func checkAnswer(userAnswer : String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        } else {
            score -= 1
            return false
        }
        
    }
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else {
            questionNumber = 0
            
        }
    }
    func getProgress() -> Float{
        return  Float(questionNumber + 1) / Float(quiz.count)
    }
    func getScore() -> Int{
        return score
    }
}
