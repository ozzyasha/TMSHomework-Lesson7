//
//  ViewController.swift
//  TMSHomework-Lesson7
//
//  Created by Наталья Мазур on 8.12.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let math = "Math"
        let biology = "Biology"
        let history = "History"
        
        // Создание учителя
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        let historyTeacher = Teacher(id: 2, firstName: "Howard", lastName: "Zinn")
        mathTeacher.addSubjectTaught(subjectName: math)
        historyTeacher.addSubjectTaught(subjectName: history)
        
        // Создание студентов
        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        
        // Связывание студентов с учителем
        student1.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: historyTeacher)
        
        // Учитель ставит оценки студентам по предметам
        student1.getGrade(grade: mathTeacher.setGrade(for: student1, subjectName: math, grade: "A"))
        student2.getGrade(grade: mathTeacher.setGrade(for: student2, subjectName: math, grade: "B+"))
        
        // Реализуйте методы в классе Student для добавления предметов
        student1.addSubject(subjectName: math)
        student1.addSubject(subjectName: biology)
        student2.addSubject(subjectName: history)
        student2.addSubject(subjectName: math)
        
        //установки оценок
        
        //получения информации о студенте.
        
         //Реализуйте методы в классе Teacher с указанием предметов
        mathTeacher.addSubjectTaught(subjectName: "Math")
        // установки оценок
        
        // и получения информации о студенте которому ставишь оценку.

         //Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.

         //Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.

          //Итог: Создайте несколько экземпляров студентов, преподавателей. Добавьте студентам предметы и установите оценки.
          //Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
        student1.studentInfo()
        student2.studentInfo()
         //У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
        mathTeacher.teacherInfo()


        
        




    }


}

