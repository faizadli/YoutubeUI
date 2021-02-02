//
//  SettingView.swift
//  YoutubeUI
//
//  Created by faiz on 02/02/21.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            Form{
                //section foto profile
                Section(){
                    HStack(spacing: 20){
                        Image("profile")
                            .resizable()
                            .frame(width: 50, height:50)
                            .clipShape(Circle())
                        
                        //Nama dan status
                        VStack(alignment: .leading){
                            Text("Faiz Adli")
                                .font(.headline)
                            Text("Ui Designer")
                                .font(.caption)
                        }
                    }
                    .padding(.top,10)
                    .padding(.bottom,10)
                }
                
                //Section Pengaturan Umum
                Section(header: Text("Pengaturan Umum")){
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Video Favorit")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Channel")
                    }
                }
                
                //Section Pengaturan Umum
                Section(header: Text("Pengaturan Akun")){
                    HStack(spacing: 20){
                        Image(systemName: "heart")
                            .frame(width: 35, height: 35)
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Like Video")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "lock.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        Text("Keamanan")
                    }
                }
                
                
            }.navigationBarTitle("Setting")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
