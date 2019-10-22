//
//  ContentView.swift
//  tsts
//
//  Created by Evgeny Salov on 18.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let arrayOfElements = getAllElements()
    
    var body: some View {
        List {
            VStack(alignment: .leading) {
                
                ForEach(0..<arrayOfElements.count) { index in
                    Text(self.arrayOfElements[index].presentName)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Text(self.arrayOfElements[index].descriptionProtocol())
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func getAllElements() -> Array<Descriptionable> {
    var array: [Descriptionable] = Notice.createElements(numberOfElements: Int.random(in: 3...33))
    array += Event.createElements(numberOfElements: Int.random(in: 3...33))
    array += Move.createElements(numberOfElements: Int.random(in: 3...33))
    
    return array
}
