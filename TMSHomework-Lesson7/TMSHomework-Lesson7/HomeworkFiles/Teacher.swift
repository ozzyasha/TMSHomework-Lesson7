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
    
    var grade = ""
    // Метод для добавления предмета, который ведет учитель
    func addSubjectTaught(subjectName: String) {
        let subject = Subject(subjectName: subjectName, grade: grade)
        self.subjectsTaught.append(subject)
    }
    
    func setTeacherFullName(name: String, lastName: String) {
        self.firstName = name
        self.lastName = lastName
    }
    
    func getTeacherFullName() -> String {
        return self.firstName + " " + self.lastName
    }
    
//    func getStudentsTaught() -> String {
//        return studentsTaught.map({$0.name})
//    }
    // Метод для установки оценки ученику по определенному предмету
    func setGrade(for: Student, subjectName: String, grade: String) -> String {
        self.studentsTaught.append(`for`)
        subjectsTaught.forEach { s in
            if subjectName == s.subjectName {
                self.grade = grade
            } else {
                self.grade = "No grade"
            }
        }
        return grade + " (was set by \(firstName) \(lastName) for \(subjectName))"
    }
    // Метод для получения информации об учителе и предметах, которые он ведет
//    func teacherInfo() -> [[String:String]] {
//        return[["ID" : "\(id)"], ["Name" : "\(firstName)"], ["Surname" : "\(lastName)"], ["Subject" : "\(subjectsTaught.map({$0.subjectName}))"], ["Student" : "\(studentsTaught.map({$0}))"], ["Grade" : "\(subjectsTaught.map({$0.grade}))"]]
    func teacherInfo() {
        print("Teacher \(firstName) \(lastName) teaches the subject:  \(subjectsTaught.map({$0.subjectName}))")
    }
    
}

//Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
//Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.
