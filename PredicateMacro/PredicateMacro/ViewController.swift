//
//  ViewController.swift
//  PredicateMacro
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 22/11/2023.
//

import UIKit
struct Student {
    let name: String
    let age : Int
    let goodStudent: Bool
}

class ViewController: UIViewController {
    static let goodStudentPredicate =  #Predicate<Student> { student in
        return student.goodStudent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        go()
    }
    private func go() {
        let students =  [
           Student(name: "Matcha", age: 10, goodStudent: true),
           Student(name: "Dau Tay", age: 12, goodStudent: false),
           Student(name: "Ngoc Dao", age: 8, goodStudent: true),
           Student(name: "Su kem", age: 11, goodStudent: false),
           Student(name: "HH", age: 20, goodStudent: true)
        ]
        do{
            let goodStudents = try students.filter(Self.goodStudentPredicate)
            for i in goodStudents {
                print(i.name)
            }
        } catch {
            
        }
    }


}

