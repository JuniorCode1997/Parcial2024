//
//  AgendaListView.swift
//  Parcial
//
//  Created by user259657 on 10/20/24.
//


import SwiftUI

struct AgendaListView: View {
    @ObservedObject var viewModel:AgendaListViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                List {
                    ForEach(viewModel.agendas){ agenda in
                        HStack {
                            VStack (alignment: .leading){
                                Text(agenda.number).font(.title)
                                Text(agenda.telf)
                                Text(agenda.mail)
                            }
                            
                            
                        }
                    }.onDelete(perform:
                        viewModel.deleteAgenda
                    )
                    
                }
                
            }.navigationTitle("Contactos")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination:{
                            AgendaView { agenda in
                                viewModel.addAgenda(agenda: agenda)
                            }
                        })
                        {
                            Image(systemName: "plus")
                        }
                    }
                    
                }
        }}
    }

#Preview {
    AgendaListView(viewModel: AgendaListViewModel())
}
