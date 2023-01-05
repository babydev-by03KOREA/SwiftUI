//
//  AirlineDetail.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

struct AirlineDetail: View {
    
    @State var isPresent: Bool = false
    
    let airMaker: AirMaker
    
    var body: some View {
        VStack {
            Image(airMaker.imageUrl).resizable().aspectRatio(contentMode: .fit)
                .onTapGesture (count: 2, perform: {
                    self.isPresent = true
                })
            Text(airMaker.name)
        }.alert(isPresented: $isPresent, content: {
            Alert(title: Text("더블클릭"), message: Text("감지됨"), dismissButton: .default(Text("OK")))
        })
    }
}

struct AirlineDetail_Previews: PreviewProvider {
    static let previewMaker = AirMaker(name: "Korean Air", imageUrl: "KoaranAir", numberOfStore: 10000)
    static var previews: some View {
        AirlineDetail(airMaker: previewMaker)
    }
}
