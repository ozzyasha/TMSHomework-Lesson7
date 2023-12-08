//
//  Teacher.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    
    // Метод для установки оценки ученику по определенному предмету
    
    // Метод для получения информации об учителе и предметах, которые он ведет
    
    
}
