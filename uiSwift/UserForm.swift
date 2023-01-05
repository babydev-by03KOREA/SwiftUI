//
//  UserForm.swift
//  uiSwift
//
//  Created by 박형주 on 2023/01/05.
//

import SwiftUI

struct UserForm: View {
    // User Input Value Default
    let genderType = ["남성", "여성", "비밀"]
    
    @State var name = ""
//    @State var age = ""
    @State var bornIn = 0
    @State var gender = 0
    
    var resultScript:String {
        if(name.isEmpty){
            return "이름을 입력해주세요."
        }else{
            return "\(name)님은 성별이 \(genderType[gender])이며 나이는 \(84 - bornIn)입니다."
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Name")){
                    TextField("이름을 입력해주세요", text: $name).keyboardType(.default)
                }
                
//                Section {
//                    TextField("나이를 입력해주세요", text: $age).keyboardType(.numberPad)
//                }
                
                Section(header: Text("생년월일")) {
                    Picker("출생년도", selection: $bornIn) {
                        ForEach(1940 ..< 2023) {
                            Text("\(String($0))년생")
                        }
                    }
                }
                
//                Section {
//                    Text("\(name)님의 나이는 \(age)입니다.")
//                }
                
                Section(header: Text("성별")) {
                    Picker("성별", selection: $gender) {
                        ForEach(0 ..< genderType.count) {
                            Text("\(self.genderType[$0])")
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                Section(header: Text("결과")) {
                    Text("\(resultScript)")
                }
                
            }.navigationTitle("User Join")
            
        }
    }
}

struct UserForm_Previews: PreviewProvider {
    static var previews: some View {
        UserForm()
    }
}

