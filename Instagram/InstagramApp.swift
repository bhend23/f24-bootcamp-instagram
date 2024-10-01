//
//  InstagramApp.swift
//  Instagram
//
//  Created by Brandon Henderson on 9/17/24.
//

import SwiftUI

@main
struct InstagramApp: App {
    var body: some Scene {
        WindowGroup {
            PostView()
        }
    }
}

import SwiftUI

struct PostView: View {
    @State private var isLiked = false
    @State private var isBookmark = false
    @State private var likeCount = 23453
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("LePookie")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(Circle())
                Text("HaalandLuvr9")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("LePookie")
                .resizable()
                .scaledToFit()
            HStack(spacing: 16) {
                Button(action: {
                    isLiked.toggle()
                    likeCount += isLiked ? 1 : -1
                        }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                    .foregroundColor(isLiked ? .red : .primary)
                                }
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Button(action: {
                    isBookmark.toggle()
                }, label: {
                    Image(systemName: isBookmark ? "bookmark.fill" : "bookmark")
                        .foregroundColor(isBookmark ? .black : .primary)
                })
            }
            .font(.title2)
            Text("\(likeCount) likes")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("**HaalandLuvr9** Haaland is the best footballer of all time, love this guy")
                .font(.footnote)
            Text("February 14")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}
#Preview {
    PostView()
}

