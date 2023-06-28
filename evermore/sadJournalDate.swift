//
//  sadJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct sadJournalDate: View {
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

struct sadJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        sadJournalDate()
    }
}
