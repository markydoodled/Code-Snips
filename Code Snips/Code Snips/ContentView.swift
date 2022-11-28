//
//  ContentView.swift
//  Code Snips
//
//  Created by Mark Howard on 22/11/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            List {
               
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Code Snips")
        } detail: {
            /*VStack {
                Image("AppsIcon")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom)
                Text("Code Snips")
                    .bold()
                    .font(.title)
            }
            .padding()*/
            EditorView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
