//
//  Student.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Student {
    private var id: Int
    private var name: String
    private var lastName: String
    private var age: Int
    private var subjects: [Subject]
    private var teacher: Teacher?
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    let noTeacher = Teacher(id: 0, firstName: "N/A", lastName: "N/A")
    
    var grade = "No grade"
    // Метод для получения предмета
    func addSubject(subjectName: String) -> String {
        let subject = Subject(subjectName: subjectName, grade: grade)
        self.subjects.append(subject)
        return subjectName
    }
    
    // Метод для установки оценок
//    func getGrade(subjectName: String, grade: String) {
//        subjects.forEach{s in
//            if subjectName == s.subjectName {
//                self.grade = grade
//            } else {
//                self.grade = "No grade"
//            }
//        }
//    }
    
    func getGrade(teacher: Teacher, grade: String) -> String {
        if self.teacher === teacher {
            self.grade = grade
            return grade
        } else {
            return "No grade"
        }
    }
    
    // Метод для установки возраста студента
    func addAge(age: Int) {
        self.age = age
    }
    
    // Метод для установки имени студента
    func studentName(name: String) {
        self.name = name
    }
    
    // Метод для связывания студента с учителем
    func assignTeacher(teacher: Teacher) { 
        self.teacher = teacher
        print("Teacher \(teacher.getTeacherFullName()) has been assigned to the student \(name) \(lastName)")
    }
    
    // Метод для получения информации о студенте и его предметах
//    func studentInfo() -> [[String:String]] {
//        return[["ID" : "\(id)"], ["Name" : "\(name)"], ["Surname" : "\(lastName)"], ["Subject" : "\(subjects.map({$0.subjectName}))"], ["Grade" : "\(subjects.map({$0.grade}))"], ["Teacher" : "\((teacher ?? noTeacher).teacherInfo())"]]
//    }
    func studentInfo() {
        print("Student \(name) \(lastName) (age: \(age), ID: \(id)) has the subjects: \(subjects.map({$0.subjectName})) with grade: \(grade)")
    }
    
}

//Реализуйте методы в классе Student для добавления предметов, установки оценок и получения информации о студенте.
//Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.
