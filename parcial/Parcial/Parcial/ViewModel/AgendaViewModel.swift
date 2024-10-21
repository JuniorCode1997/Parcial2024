//
//  AgendaViewModel.swift
//  Parcial
//
//  Created by user259657 on 10/20/24.
//

import Foundation

class AgendaViewModel: ObservableObject{
    @Published  private (set) var number: String = ""
    @Published  private (set) var telf: String = ""
    @Published  private (set) var mail: String = ""
    
    func updateNumber(number: String){
        self.number = number
    }
    
    func updateTelf(telf: String){
        self.telf = telf
    }
    func updateMail(mail: String){
        self.mail = mail
    }
}
