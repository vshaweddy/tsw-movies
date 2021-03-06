//
//  TicketRowHeader.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/24/20.
//

import SwiftUI

struct TicketRowHeader: View {
    var body: some View {
        HStack {
            HStack {
                Text("TICKET")
                    .frame(alignment: .center)
                    .custom(font: .medium, size: 14)
                    .foregroundColor(.baseAccentText)
                    .padding(.leading, 4)
                
                Spacer()
                Text("PRICE")
                    .frame(alignment: .center)
                    .custom(font: .medium, size: 14)
                    .foregroundColor(.baseAccentText)
                    .padding(.leading, 4)
                
                Spacer()
                Text("QUANTITY")
                    .frame(alignment: .center)
                    .frame(minWidth: 100)
                    .custom(font: .medium, size: 14)
                    .foregroundColor(.baseAccentText)
                    .padding(.leading, 4)
            }.padding(.horizontal, 7)
        }
        .padding(.horizontal, 10)
        .background(Color.baseAccent)
        .cornerRadius(10, corners: [.topLeft, .topRight])
    }
}

struct TicketRowHeader_Previews: PreviewProvider {
    static var previews: some View {
        TicketRowHeader()
    }
}
