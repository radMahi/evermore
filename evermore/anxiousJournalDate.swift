//
//  anxiousJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct anxiousJournalDate: View {
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

struct anxiousJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        anxiousJournalDate()
    }
}
