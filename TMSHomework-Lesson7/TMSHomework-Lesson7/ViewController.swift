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
        
        let math = Subject(subjectName: "Math", grade: "")
        let history = Subject(subjectName: "History", grade: "")
        let biology = Subject(subjectName: "Biology", grade: "")
        
        // Создание учителя
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        let historyTeacher = Teacher(id: 2, firstName: "Howard", lastName: "Zinn")
        let biologyTeacher = Teacher(id: 3, firstName: "Charles", lastName: "Darvin")
        
        mathTeacher.addSubjectTaught(subjectName: math.subjectName)
        historyTeacher.addSubjectTaught(subjectName: history.subjectName)
        biologyTeacher.addSubjectTaught(subjectName: biology.subjectName)
        
        // Создание студентов
        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        
        student1.addAge(age: 21)
        student2.addAge(age: 22)
        
        // Связывание студентов с учителем
        student1.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: mathTeacher)
        
        print("")
        
        student1.addSubject(subjectName: math.subjectName)
        student1.addSubject(subjectName: biology.subjectName)

        student2.addSubject(subjectName: history.subjectName)
        student2.addSubject(subjectName: math.subjectName)
        
        // Учитель ставит оценки студентам по предметам
        student1.getGrade(teacher: mathTeacher, grade:( mathTeacher.setGrade(for: student1, subjectName: math.subjectName, grade: "A")))
        student2.getGrade(teacher: mathTeacher, grade: (mathTeacher.setGrade(for: student2, subjectName: math.subjectName, grade: "B+")))
        
        //Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
        student1.studentInfo()
        student2.studentInfo()
        
        print("")
        
        student2.assignTeacher(teacher: historyTeacher)
        student1.assignTeacher(teacher: biologyTeacher)
        
        print("")
        
        student2.getGrade(teacher: historyTeacher, grade: (historyTeacher.setGrade(for: student2, subjectName: history.subjectName, grade: "A+")))
        student1.getGrade(teacher: biologyTeacher, grade: (biologyTeacher.setGrade(for: student1, subjectName: biology.subjectName, grade: "C")))
        
        student1.studentInfo()
        student2.studentInfo()
        
        
        //У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
        print("")
        mathTeacher.teacherInfo()
        historyTeacher.teacherInfo()
        biologyTeacher.teacherInfo()
    }


}

