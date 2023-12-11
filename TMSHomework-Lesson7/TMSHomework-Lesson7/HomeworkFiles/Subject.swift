//
//  Subject.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

struct Subject {
    private(set) var subjectName: String
    private(set) var grade: String
    
    func getSubjectName() -> String {
        return self.subjectName
    }
    
    func getGrade() -> String {
        return self.grade
    }
}
