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
    
    // Метод для получения предмета
    func addSubject(subjectName: Subject) { }
    
    // Метод для установки возраста студента
    func addAge(age: Int) { }
    
    // Метод для установки имени студента
    func studentName(name: String) { }
    
    // Метод для связывания студента с учителем
    func assignTeacher(teacher: Teacher) { }
    
    // Метод для получения информации о студенте и его предметах
    func studentInfo(student: Student, subjectName: Subject) { }
    
}

//Реализуйте методы в классе Student для добавления предметов, установки оценок и получения информации о студенте.
//Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.
