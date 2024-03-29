//
//  ContentView.swift
//  tsts
//
//  Created by Evgeny Salov on 18.10.2019.
//  Copyright © 2019 Evgeny Salov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var arrayOfElements: [Descriptionable] = getAllElements()
    
    var body: some View {
        NavigationView {
            List { 
                ForEach(0..<arrayOfElements.count) { index in
                    NavigationLink(destination: Text(self.arrayOfElements[index].descriptionString)) {
                        VStack(alignment: .leading) {
                            Text(self.arrayOfElements[index].presentName)
                                .font(.title)
                                .multilineTextAlignment(.leading)
                            Text(self.arrayOfElements[index].descriptionString)
                                .multilineTextAlignment(.leading)
                                .lineLimit(1)
                        }
                    }
                }
            }
            .navigationBarTitle("TSTS TASK")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(arrayOfElements: getAllElements())
    }
}

func getAllElements() -> [Descriptionable] {
    var array: [Descriptionable] = Notice.createElements(numberOfElements: Int.random(in: 3...33))
    array += Event.createElements(numberOfElements: Int.random(in: 3...33))
    array += Move.createElements(numberOfElements: Int.random(in: 3...33))
    
    return array
}
