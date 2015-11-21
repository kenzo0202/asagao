body=  "私は岡野健三です。早稲田大学法学部三年生です"

0.upto(9)do |idx|
    Article.create(
        title: "試合の結果#{idx}"+ (idx % 3 ==0 ? "☆" : ""),
        body: body,
        released_at: 8.days.ago.advance(days: idx),
        expired_at: 2.days.ago.advance(days: idx),
        member_only: (idx % 3 ==0)
        )
end