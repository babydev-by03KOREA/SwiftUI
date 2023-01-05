//
//  ListViewNav.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

struct AirMaker {
    let name: String
    let imageUrl: String
    let numberOfStore: Int
}

extension AirMaker {
    static func all() -> [AirMaker] {
        return [
            AirMaker(name: "대한항공", imageUrl: "KoreanAir", numberOfStore: 1000000),
            AirMaker(name: "아시아나항공", imageUrl: "AsianaAir", numberOfStore: 800000),
            AirMaker(name: "제주항공", imageUrl: "JejuAir", numberOfStore: 500000),
        ]
    }
}

struct ListViewNav: View {
    
    let airMakers = AirMaker.all()
    
    var body: some View {
        
        NavigationView {
            List(self.airMakers, id: \.name) {
                airMakers in NavigationLink(destination: AirlineDetail(airMaker: airMakers)) {
                    AirMakerCell(airMaker: airMakers)
                }
            }.navigationBarTitle("AirLine", displayMode: .inline)
        }
    }
}

struct ListViewNav_Previews: PreviewProvider {
    static var previews: some View {
        ListViewNav().previewDisplayName("ListView & Navigation")
    }
}

// AirMakerCell은 별도의 파일로 분리해도 괜찮음!

struct AirMakerCell: View {
    
    let airMaker: AirMaker
    
    var body: some View {
        HStack {
            Image(airMaker.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(airMaker.name).font(.largeTitle)
            Text("\(airMaker.numberOfStore)₩~")
            }
        }
    }
}
