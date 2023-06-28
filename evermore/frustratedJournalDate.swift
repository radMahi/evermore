//
//  frustratedJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct frustratedJournalDate: View {
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

struct frustratedJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        frustratedJournalDate()
    }
}
