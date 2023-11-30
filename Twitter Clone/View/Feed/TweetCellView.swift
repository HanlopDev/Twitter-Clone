
//  TweetCellView.swift
//  Twitter Clone
//
//  Created by Hanaf on 13/11/2023.
//

import SwiftUI

struct TweetCellView: View {
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10, content: {
                HStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 55, height: 55)
                    .clipShape(Circle())
                }
                VStack(alignment: .leading,spacing: 10,
                       content: {
                    (
                        Text("Hanaf")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.primary)
                        +
                        Text("@Hanlop_Dev")
                            .foregroundColor(.gray)
                    )
                    Text(sampleText)
                        .frame(maxHeight: 100, alignment: .top)
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                })
            })
            //cell Button
            HStack(spacing: 50, content: {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("comments")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .frame(width: 18, height: 18)
                }).foregroundColor(.gray)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("retweet")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .frame(width: 18, height: 18)
                }).foregroundColor(.gray)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("love")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .frame(width: 18, height: 18)
                }).foregroundColor(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("upload")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .frame(width: 18, height: 18)
                }).foregroundColor(.gray)
            })
            .padding(.top, 4)
            
        }
    }
}

#Preview {
    TweetCellView(tweet: sampleText)
}

var sampleText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets"
