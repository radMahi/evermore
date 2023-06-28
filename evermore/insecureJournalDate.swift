//
//  insecureJournalDate.swift
//  evermore
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct insecureJournalDate: View {
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

struct insecureJournalDate_Previews: PreviewProvider {
    static var previews: some View {
        insecureJournalDate()
    }
}
