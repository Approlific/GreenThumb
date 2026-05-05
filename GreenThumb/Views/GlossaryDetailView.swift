//
//  GlossaryDetailView.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import SwiftUI

struct GlossaryDetailView: View {
    
    var glossaryItem: Glossary
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text(glossaryItem.name)
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 10)
            
            VStack (alignment: .leading) {
                                
                Text("Definition:")
                    .font(.title)
                    .bold()
                Text(glossaryItem.definition)
                    .padding(.bottom, 10)
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.tint)
            .opacity(0.9)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack {
                
                Text("Context:")
                    .font(.title)
                    .bold()
                Text(glossaryItem.context)
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.tint)
            .opacity(0.9)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
        }
        .padding()
        
    }
    
}

#Preview {
    GlossaryDetailView(glossaryItem: Glossary(name: "Flower", definition: "This is the definition of this particular flower item.", context: "This is the context of this particular flower item.", symbol: "drop.leaf.fill"))
}
