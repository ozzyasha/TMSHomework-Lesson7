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
    
    var grade = [String]()
    
    // Метод для добавления предмета, который ведет учитель
    func addSubjectTaught(subjectName: String) {
        let subject = Subject(subjectName: subjectName, grade: "")
        self.subjectsTaught.append(subject)
    }
    
    func assignStudent(student: Student) {
        self.studentsTaught.append(student)
    }
    
    func setTeacherFullName(name: String, lastName: String) {
        self.firstName = name
        self.lastName = lastName
    }
    
    func getTeacherFullName() -> String {
        return self.firstName + " " + self.lastName
    }
    
    // Метод для установки оценки ученику по определенному предмету
    func setGrade(for: Student, subjectName: String, grade: String) -> String {
        self.studentsTaught.append(`for`)
        subjectsTaught.forEach { s in
            if subjectName == s.subjectName {
                self.grade.append(grade)
            } else {
                self.grade.append("No grade")
            }
        }
        return grade + " (was set by \(firstName) \(lastName) for \(subjectName))"
    }
    // Метод для получения информации об учителе и предметах, которые он ведет
    func teacherInfo() {
        print("Teacher \(firstName) \(lastName) (ID: \(id)) teaches the subject:  \(subjectsTaught.map({$0.subjectName})). He has set \(grade) grades for the students  \(studentsTaught.map({$0.getName()}))")
    }
    
}

//Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
//Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.
