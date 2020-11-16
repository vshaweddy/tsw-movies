//
//  SeatSelectionView.swift
//  DesignMovies
//
//  Created by Craig Clayton on 9/23/20.
//

import SwiftUI

struct SeatSelectionView: View {
    
    var body: some View {
        VStack {
            VStack {
                screen
                seats
            }.padding(.horizontal)
            .padding(.top, 100)
        }
        .background(Color.baseBackground)
        .edgesIgnoringSafeArea(.all)
    }

    var screen: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            Image("screen")
                .resizable()
                .frame(width: 569, height: 33)
            
            Text("SCREEN")
                .custom(font: .bold, size: 19)
                .foregroundColor(.baseText)
            
        }.padding(.bottom, 60)
    }
    
    
    var seats: some View {
        VStack(spacing: 40) {
            LazyVGrid(columns: MockDataPreviewService.frontRow, alignment: .center, spacing: 50) {
                ForEach(0..<MockDataPreviewService.frontRow.count) { item in
                    LoveSeat()
                }
            }

            LazyVGrid(columns: MockDataPreviewService.secondRow, alignment: .center, spacing: 50) {
                ForEach(0..<MockDataPreviewService.secondRow.count) { item in
                    LoveSeat()
                }
            }
            
            LazyVGrid(columns: MockDataPreviewService.comfortPlusGrid, alignment: .center, spacing: 20) {
                ForEach(0 ..< MockDataPreviewService.comfortPlusRows.count*6) { item in
                    SeatButtonView(data: Seat(row: Int(item % 6) + 1, seat: "\(MockDataPreviewService.seatRows[item / 6])"), width: 51, height: 57)
                }
            }
            
            
        }
    }

}

struct SeatSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SeatSelectionView()
    }
}
            
