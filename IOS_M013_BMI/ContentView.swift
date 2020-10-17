//
//  ContentView.swift
//  IOS_M013_BMI
//
//  Created by MVK on 24/9/2563 BE.
//

import SwiftUI

struct ContentView: View {
    @State var sResult:String = "BMI Calulator?"
    @State var sWeight:String = ""
    @State var sHeight:String = ""
    var body: some View {
        VStack{
            Text(self.sResult)
                .font(.largeTitle)
                .bold()
                .padding()
            
            HStack{
                Text("น้ำหนัก : ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("กิโลกรัม", text: self.$sWeight)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .keyboardType(.numberPad)
            }.padding()
            
            HStack{
                Text("ส่วนสูง : ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                TextField("เซนติเมตร", text: self.$sHeight)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .keyboardType(.numberPad)
                
            }.padding()
            
            Button(action: {
                self.sResult = String(Double(self.sWeight)! / pow((Double(self.sHeight)!/100.00),2))
            }, label: {
                Text("คำนวน")
                    .font(.largeTitle)
            }).padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
