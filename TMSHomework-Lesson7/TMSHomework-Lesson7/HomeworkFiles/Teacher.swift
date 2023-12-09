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
    func addSubjectTaught(subjectName: String) {
        
    }
    // Метод для установки оценки ученику по определенному предмету
    func setGrade(for: Student, subjectName: String, grade: String) {
        
    }
    // Метод для получения информации об учителе и предметах, которые он ведет
    func teacherInfo(teacher: Teacher, subjectName: Subject) {
        
    }
    
}

//Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
//Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.
