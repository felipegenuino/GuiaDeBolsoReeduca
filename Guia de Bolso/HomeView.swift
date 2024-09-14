//
//  ContentView.swift
//  Guia de Bolso
//
//  Created by Felipe Genuino on 13/09/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    // Título principal
                    Text("Guia Reeduca")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    // Linha de apoio menor
                    Text("Referência para práticas em fisioterapia na UTI")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                    
                } .padding()
                
                
                // Lista de páginas
                List(pages) { 
                    page in
                    NavigationLink(destination: ContentView(page: page)) {
                            Text(page.title).font(.body)
                    }
                    .accessibilityLabel("Página sobre \(page.title)")
                    .accessibilityHint("Toque duas vezes para navegar para \(page.title)")
                    .accessibilityElement(children: .combine) // Combina os elementos de um item

                } //.listStyle(PlainListStyle()) // Remove o fundo cinza padrão
                
                
            }
            
            .navigationTitle("")
            .navigationBarHidden(true) // Esconde a barra de navegação na Home
           
           
         }
        .navigationBarBackButtonHidden(true) // Esconder o botão de voltar
    }
}


#Preview {
    HomeView()
}




//.navigationBarBackButtonHidden(true) // Esconder o botão de voltar
