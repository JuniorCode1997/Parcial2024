//
//  AgendaListViewModel.swift
//  Parcial
//
//  Created by user259657 on 10/20/24.
//

import Foundation

class AgendaListViewModel:ObservableObject {
    @Published private (set) var agendas: Agendas = []
    
    func addAgenda(agenda: Agenda) {
        agendas.append(agenda)
        
    }
    
    func deleteAgenda(indexSet: IndexSet){
        agendas.remove(atOffsets: indexSet)
    }
}


