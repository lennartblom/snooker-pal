//
//  ContentView.swift
//  snooker-pal
//
//  Created by Lennart Blom on 13.11.21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var showDetails = false
    
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        VStack(alignment: .leading) {
            if showDetails {
                Text("Something happend. Lol 🤯💥 haha").font(.largeTitle)
            }
            Text("Snooker Pal")
            Button(action: { buttonAction()}){
               Text("Press me")
               .frame(width: 100, height: 100)
               .foregroundColor(Color.black)
               .background(Color.red)
               .clipShape(Circle())
            }.buttonStyle(PlainButtonStyle())
        }
    }
    func buttonAction() {
        showDetails.toggle()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
