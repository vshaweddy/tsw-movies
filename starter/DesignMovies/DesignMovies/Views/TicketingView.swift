//
//  TicketingView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct TicketingView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                MovieDetailView().padding(.bottom, 20)
                TicketsView()
            }
            .padding(.horizontal)
            .padding(.top, 100)
            .background(Color.baseBackground)
            
            Spacer()
            CheckoutProgressView().padding(.bottom, 70)
        }
        .background(Color.baseBackground)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct TicketingView_Previews: PreviewProvider {
    static var previews: some View {
        TicketingView()
    }
}
