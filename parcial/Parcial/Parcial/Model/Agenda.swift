//
//  Agenda.swift
//  Parcial
//
//  Created by user259657 on 10/20/24.
//

import Foundation

typealias Agendas = [Agenda]

struct Agenda: Identifiable {
    let id: UUID = UUID()
    let number: String
    let telf: String
    let mail: String
    
}
