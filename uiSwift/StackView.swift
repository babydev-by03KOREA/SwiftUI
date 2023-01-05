//
//  StackView.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

struct StackView: View {
    // Vertical View > VStack
    // Horizontal View > HStack
    var body: some View {
        // (alignment, spacing 속성을 줘서 정렬방향과 간격설정이 가능함)
        VStack(alignment: .leading, spacing: 28) {
            Text("Hello HStack")
            // Spacer 선언 시 별도옵션을 주지않으면 모든 영역을 차지함
            Spacer()
            Text("Hello HStack")
            // Spacer().frame(height: %f)
            Spacer()
            Text("Hello HStack")
        }.background(Color.orange)
    }
}

struct Stack_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

