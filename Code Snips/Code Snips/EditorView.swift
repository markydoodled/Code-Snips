//
//  EditorView.swift
//  Code Snips
//
//  Created by Mark Howard on 22/11/2022.
//

import SwiftUI
import CodeMirror_SwiftUI

struct EditorView: View {
    @State var showingShare = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .navigationTitle("Editor")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    ShareLink(item: "TEST")
                }
            }
            .toolbarRole(.editor)
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView()
    }
}
