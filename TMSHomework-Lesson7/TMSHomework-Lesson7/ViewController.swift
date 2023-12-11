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
        enum Subjects: String {
            case math = "Math"
            case biology = "Biology"
            case history = "History"
        }
        
        // Создание учителя
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        let historyTeacher = Teacher(id: 2, firstName: "Howard", lastName: "Zinn")
        let biologyTeacher = Teacher(id: 3, firstName: "Charles", lastName: "Darvin")
        mathTeacher.addSubjectTaught(subjectName: Subjects.math.rawValue)
        historyTeacher.addSubjectTaught(subjectName: Subjects.history.rawValue)
        biologyTeacher.addSubjectTaught(subjectName: Subjects.biology.rawValue)
        
        // Создание студентов
        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        
        student1.addAge(age: 21)
        student2.addAge(age: 22)
        
        // Связывание студентов с учителем
        student1.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: mathTeacher)
        
        print("")
        
        student1.addSubject(subjectName: Subjects.math.rawValue)
        student1.addSubject(subjectName: Subjects.biology.rawValue)

        student2.addSubject(subjectName: Subjects.history.rawValue)
        student2.addSubject(subjectName: Subjects.math.rawValue)
        // Учитель ставит оценки студентам по предметам
        student1.getGrade(teacher: mathTeacher, grade:( mathTeacher.setGrade(for: student1, subjectName: Subjects.math.rawValue, grade: "A")))
        student2.getGrade(teacher: mathTeacher, grade: (mathTeacher.setGrade(for: student2, subjectName: Subjects.math.rawValue, grade: "B+")))
        
        
        
        
          //Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
        student1.studentInfo()
        student2.studentInfo()
        
        student2.assignTeacher(teacher: historyTeacher)
        student1.assignTeacher(teacher: biologyTeacher)
        
        student2.getGrade(teacher: historyTeacher, grade: (historyTeacher.setGrade(for: student2, subjectName: Subjects.history.rawValue, grade: "A+")))
        student1.getGrade(teacher: biologyTeacher, grade: (biologyTeacher.setGrade(for: student2, subjectName: Subjects.biology.rawValue, grade: "C")))
        
        student1.studentInfo()
        student2.studentInfo()
         //У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
        print("")
        mathTeacher.teacherInfo()
        historyTeacher.teacherInfo()
        biologyTeacher.teacherInfo()
    }


}

