//
//  ContentView.swift
//  Guia de Bolso
//
//  Created by Felipe Genuino on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.dismiss) private var dismiss // Para retornar à HomeView


    let page: PageModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                // Título principal
                Text(page.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                
                if let imageName = page.imageName {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.gray.opacity(0.3)) // Fundo cinza para a área da imagem
                        .cornerRadius(8) // Cantos arredondados para combinar com o estilo
                        .padding()
                }
                
                
                
                Text(page.content)
                    .padding()
                
                
                
                // Renderizar a tabela se existir
                if let table = page.table {
                    VStack(alignment: .leading, spacing: 4) {
                        ForEach(table.indices, id: \.self) { rowIndex in
                            HStack {
                                ForEach(table[rowIndex], id: \.self) {
                                    cell in Text(cell)
                                        .frame(maxWidth: .infinity)
                                        .padding()
//                                        .background(rowIndex == 0 ? Color.blue.opacity(0.7) : Color.gray.opacity(0.2))
                                        .background(rowIndex == 0 ? Color.blue.opacity(0.7) : Color.clear)
                                        .foregroundColor(rowIndex == 0 ? .white : .primary)
                                        .font(rowIndex == 0 ? .headline : .subheadline)
                                        .cornerRadius(5)
                                }
                            }
                            .background(rowIndex % 2 == 0 ? Color.gray.opacity(0.1) : Color.clear)
                            .cornerRadius(5)
                        }
                    }
                    .padding()
//                    .border(Color.gray, width: 0.5)
//                    .cornerRadius(10)
                }
                
                // Renderizar as referências
                    if let references = page.references, !references.isEmpty {
                        
                        VStack(alignment: .leading) {
                            Text("Referências:") .font(.headline)
                            ForEach(references, id: \.self) { reference in
                                Text("• \(reference)") // Adiciona o bullet antes do texto
                                    .font(.footnote) // Reduz o tamanho da fonte
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            } //.padding(.vertical, 4)
                        } .padding()
                       
                    }
                
                
                
            }
            .padding()
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            // Ação personalizada para voltar
            dismiss() // Volta para a HomeView
             
        }) {
            HStack {
                Image(systemName: "arrow.left")
                Text("Voltar para a Lista")
            }
        })
    }
}
