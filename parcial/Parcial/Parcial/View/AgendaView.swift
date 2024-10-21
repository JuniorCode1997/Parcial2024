//
//  AgendaView.swift
//  Parcial
//
//  Created by user259657 on 10/20/24.
//

import SwiftUI

struct AgendaView: View {
    
    @StateObject var viewModel: AgendaViewModel = AgendaViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    var onAddAgenda: (Agenda) -> Void
    
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Number", text: Binding(
                get: { viewModel.number},
                set:{viewModel.updateNumber(number: $0)
                })).padding().textFieldStyle(.roundedBorder)
                
                TextField("Telf", text: Binding(
                get: { viewModel.telf},
                set:{viewModel.updateTelf(telf: $0)
                })).padding().textFieldStyle(.roundedBorder)
                
                TextField("Mail", text: Binding(
                get: { viewModel.mail},
                set:{viewModel.updateMail(mail: $0)
                })).padding().textFieldStyle(.roundedBorder)
            
                
            }.navigationTitle("Agenda")
                .toolbar{
                    ToolbarItem (placement: .topBarTrailing){
                        Button(action: {
                            let agenda = Agenda(number:
                                viewModel.number,telf:
                                viewModel.telf,mail:
                                viewModel.mail)
                                                   
                            onAddAgenda(agenda)
                            
                            dismiss()
                                                } ){
                            Image(systemName: "square.and.arrow.down")
                        }
                        
                    }
                    
                }
        }
    }
    
}
        
    


#Preview {
    AgendaView(viewModel: AgendaViewModel()){
        _ in
    }
}
