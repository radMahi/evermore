//
//  worriedJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct worriedJournalDate: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: affirmation()) {
                    Text("save")
                }
            }
        }
    }
}

struct worriedJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        worriedJournalDate()
    }
}
