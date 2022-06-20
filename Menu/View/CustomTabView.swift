//
//  CustomTabView.swift
//  Menu
//
//  Created by ayhan on 15.02.2022.
//

import SwiftUI

struct CustomTabView: View {

  @Binding var curretTab: String
  @Binding var showMenu: Bool

    var body: some View {
      VStack{
        HStack{
          Button{
            withAnimation(.spring()){
              showMenu = true
            }
          }label: {
            Image(systemName: "line.3.horizontal.decrease")
              .font(.title2)
              .foregroundColor(.white)
          }
          .opacity(showMenu ? 0 : 1)
          Spacer()

          Button{


          }label: {
              Image("Pic")
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: 45, height: 45)
              .cornerRadius(5)
          }

        }
        .overlay(
Text(curretTab)
  .font(.title2.bold())
  .foregroundColor(.white)

  .opacity(showMenu ? 0 : 1)

        )
        .padding([.horizontal, .top])
        .padding(.bottom,8)
        .padding(.top,getSafeArea().top )
        TabView(selection: $curretTab) {
          Text("Home")
            .tag("Home")

          Text("Discover")
            .tag("Discover")

          Text("Devices")
            .tag("Devices")

          Text("Profile")
            .tag("Profile")
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .overlay(
        Button{
          withAnimation(.spring()){
            showMenu = false
          }
        }label: {
          Image(systemName: "xmark")
            .font(.title2)
            .foregroundColor(.white)
        }
        .opacity(showMenu ? 1 : 0)
          .padding()
          .padding(.top)



        ,alignment: .topLeading
      )

      .background(

        Color.black

      )
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
