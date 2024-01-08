//
//  ContentView.swift
//  searchable_Sample
//
//  Created by 奥村亮 on 2024/01/08.
//

import SwiftUI

struct ContentView: View {
    // 検索バーに入力される文字列
    @State private var inputText: String = ""
    // 検索状態のオンオフによって切り替わるBool値 searchableのisPresented(i0S17以降)にバインドする
    @State private var isSearching: Bool = false
    
    var body: some View {
        NavigationStack { // searchableモディファイアを使用する為にNavigationStackでラップする
            Text("\(isSearching ? "検索中" : "検索してない")")
            Spacer()
            .searchable(text: $inputText,
                        isPresented: $isSearching,
                        placement: .toolbar,
                        prompt: "検索ワードを入力してください")
            .onSubmit(of: .search) { // 検索の実行
                // 実行したい検索メソッドなどを記述する
                print("検索を実行した")
            }
            .onChange(of: isSearching) { _, newValue in
                // キャンセルが押されて、検索がオフになった場合(isSearchingがfalseに変わった場合)
                if !newValue {
                    // 実行したい処理を記述する
                    print("キャンセルした")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
