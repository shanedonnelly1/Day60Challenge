//
//  DetailView.swift
//  Day60Challenge
//
//  Created by Shane on 31/10/2020.
//

import SwiftUI

struct DetailView: View {
    var user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 64, height: 64)
                    if user.isActive {
                        Text("Active")
                    } else {
                        Text("Inactive")
                    }
                }
                Spacer()
                VStack {
                    Text("Age")
                        .padding(1)
                    Text("\(user.age)")
                }
                Spacer()
                VStack {
                    Image(systemName: "person.3")
                        .padding(1)
                    Text("\(user.friends.count)")
                }
            }
            .padding(5)
            .font(.subheadline)
            .foregroundColor(user.isActive ? .black : .gray)
            
            HStack {
                Text(user.email)
                Spacer()
                Text(user.company)
            }
            .font(.system(size: 15, weight: .heavy, design: .default))
            .padding(5)
            
            HStack {
                Text(user.about)
                    .font(.body)
            }
            .padding(5)
            
            Section(header: Text("Friends")) {
                List {
                    ForEach(user.friends, id: \.id) { friend in
                        Text(friend.name)
                    }
                }
            }
                
            Spacer()
        }
        .padding(16)
        .navigationBarTitle(user.name, displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let user: User = User(id: "12345", isActive: true, name: "Shane", age: 41, company: "Bentley", email: "shane@bentley.org", address: "123 Friend St", about: "Is awesome", registered: Date(), tags: ["awesome"], friends: [])
        NavigationView {
            DetailView(user: user)
        }
    }
}
