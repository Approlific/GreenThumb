//
//  GlossaryView.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import SwiftUI

struct GlossaryView: View {
    
    @State var glossary: [Glossary] = []
    @State var tappedItem: Glossary?
    var dataService: DataService = DataService()
    
    var body: some View {
            
        List() {
            
            Text("Glossary")
                .font(.largeTitle)
                .bold()
            
            ForEach(glossary) { item in
                
                HStack {

                    Image(systemName: item.symbol)
                        .foregroundStyle(.tint)
                    
                    Text(item.name)
                        .listRowSeparator(.hidden)
                        .onTapGesture {
                            tappedItem = item
                        }
                    
                }
                
            }
            
        }
        .cornerRadius(15)
        .onAppear() {
            
            glossary = dataService.getGlossaryData()
            
        }
        .sheet(item: $tappedItem) { item in
            GlossaryDetailView(glossaryItem: item)
        }
        .navigationTitle("Glossary")
        
    }
}

#Preview {
    GlossaryView(tappedItem: Glossary(name: "Flower", definition: "This is the definition of this particular flower item.", context: "This is the context of this particular flower item.", symbol: "drop.leaf.fill"))
}
