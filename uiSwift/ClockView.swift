//
//  ClockView.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

struct ClockView: View {
    // Vertical View > VStack 세로
    // Horizontal View > HStack 가로
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors:[.red,.orange,.yellow,.green,.blue,.purple]), center: .center).edgesIgnoringSafeArea(.all)
            HStack {
                VStack {
                    Text("11시")
                    Spacer()
                    Text("9시")
                    Spacer()
                    Text("7시")
                }
                Spacer()
                VStack {
                    Text("12시")
                    Spacer()
                    Text("Center")
                    Spacer()
                    Text("6시")
                }
                Spacer()
                VStack {
                    Text("1시")
                    Spacer()
                    Text("3시")
                    Spacer()
                    Text("5시")
                }
            }
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
