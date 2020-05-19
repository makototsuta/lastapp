Map.create!(
  [
    {name: '番町皿屋敷（お菊の皿）', address: '東京都千代田区五番町', content: '市ヶ谷駅近辺、千代田区九段南四丁目と五番町の境界の靖国通りから番町方面へ上る坂は、帯坂と呼称されるが、お菊が、髪をふり乱し、帯をひきずりながらここを通ったという曰くがある。', horror_level: '★★', icon:File.open("#{Rails.root}/app/assets/images/okiku_hirosige.jpg")},
    {name: 'NTT上野ビル', address: '東京都台東区上野５丁目２４−１１', content: '江戸幕府の彰義隊を葬った場所。工事の際、人骨や刀の鍔が出てきたそうな。工事中色々有ったので屋上に供養塔が有り、ビル内には仏壇も有るという。', horror_level: '★★', icon:File.open("#{Rails.root}/app/assets/images/NTT-E-ueno91.jpg")},
    {name: '白金トンネル', address: '東京都品川区上大崎２丁目ー７', content: '事故が多発し心霊スポット化。隣の国立科学博物館附属自然教育園は、元は国立予防衛生研究所だったため、その因縁も噂される。', horror_level: '★★★', icon:File.open("#{Rails.root}/app/assets/images/s_MG_9207.jpg")},
    {name: 'たっちゃん池（宅部池）', address: '東京都東村山市多摩湖町３丁目１７−１９', content: '大正14年、たっちゃんと呼ばれていた少年が池に落ち、助けに入った青年2人と共に亡くなる。', horror_level: '★★★', icon:File.open("#{Rails.root}/app/assets/images/maxresdefault.jpg")},
    {name: '八王子トンネル', address: '東京都八王子市国道16号線', content: '赤い洋服を着た幽霊がでるという噂もあり、肝試しで訪れる方も多い心霊スポット。トンネルは霊が集まりやすい場所と言われていますので、安易な気持ちで近づかないようにご注意。', horror_level: '★★★★', icon:File.open("#{Rails.root}/app/assets/images/180_1.jpg")}
  ]
)

User.create!(
  [
    {id: '1', name: 'satou', email: 'satou@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/satou.png"), password: '111111', birthed_at: '1990-01-10', sex: '男', address: '東京都台東区上野５丁目２４−１１', mobile_number: '090-1111-2222', introduction: '宜しくお願いします' },
    {id: '2', name: 'tanaka', email: 'tanaka@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/tanaka.png"), password: '222222', birthed_at: '1989-02-10', sex: '女', address: '東京都中野区中野1丁目４−１', mobile_number: '080-1211-2222', introduction: '初めまして' },
    {id: '3', name: 'suzuki', email: 'suzuki@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/suzuki.jpeg"), password: '333333', birthed_at: '1985-05-16', sex: '男', address: '神奈川県川崎市川崎2丁目４−１', mobile_number: '070-1211-2222', introduction: '鈴木です。宜しく' },
    {id: '4', name: 'kimura', email: 'kimura@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/kimura.jpeg"), password: '444444', birthed_at: '1977-03-20', sex: '男', address: '静岡県静岡市掛川4丁目４−１', mobile_number: '090-1211-2222', introduction: '木村です。頑張りましょう' },
    {id: '5', name: 'sakamoto', email: 'sakamoto@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/sakamoto.jpeg"), password: '555555', birthed_at: '1950-04-20', sex: '男', address: '栃木県栃木市5丁目４−１', mobile_number: '090-1211-3333', introduction: '坂本です。初めまして' }
  ]
)

Event.create!(
  [
    {title: '本家 心霊スポット巡礼ツアー「多魔」', address: '東京都田無駅集合', content: '「多摩」周辺の鬼哭啾啾な心霊スポットをご案内致します。 山岳エリアの知る人ぞ知るスポットから有名スポットまで幅広くご案内させていただきます。 昨年同様に、最恐の怖さを誇るHELLコースをご用意。ご了承ください', outline: '「多摩」周辺の鬼哭啾啾な心霊スポットをご案内致します', icon:File.open("#{Rails.root}/app/assets/images/okiku_hirosige.jpg"), participant_number: '8', day_time_at: 'Sun, 17 May 2020', user_id: '1'},
    {title: '百物語', address: '神奈川県川崎駅集合', content: '今夏も、同じく神奈川にある光蓮寺の本堂をお借りし、夜を徹しての怪談会に挑む。果たして最後までやり遂げることが出来るのか。そして最後の話が語られた時、一体何が起きるのか。それは是非、この会に参加して、あなた自身の目で確かめて頂きたい。', outline: '参加者が順番に怪談を語っていくイベントです', icon:File.open("#{Rails.root}/app/assets/images/ダウンロード.jpeg"), participant_number: '10', day_time_at: 'Sun, 24 May 2020', user_id: '2'},
    {title: '元祖 心霊スポット巡礼ツアー「横浜」', address: '神奈川県横浜駅集合', content: '横浜エリアの知る人ぞ知るスポットから有名スポットまで幅広くご案内させていただきます。 昨年より怖さがバージョンアップしております。ご了承ください。', outline: '「横浜」周辺の幽明異境な心霊スポットをご案内致します。', icon:File.open("#{Rails.root}/app/assets/images/2019summer_img14.png"), participant_number: '12', day_time_at: 'Sun, 14 June 2020', user_id: '3'},
    {title: '野水の毒々オカルトナイト～怪談×心霊×事故物件', address: '東京都新宿 LEFKADA新宿', content: '事故物件の居住者と電話をつなぎ、当事者ならではの悩みなどを聞く、という内容です。そこでイベント当日に電話可能な方を募集します。名前（ペンネーム可）・電話番号を明記の上、メールの件名に【大島TEL参加希望】と付けて、下記までご連絡ください。宜しくお願いします！', outline: '大好評配信中の『野水の毒々ナマ放送』が、１３日の金曜日にレフカダ新宿に出現！', icon:File.open("#{Rails.root}/app/assets/images/RZHQRvy7c4e8NIQ0rbPGtIDKk7MGw1e3w2t7ryHjzyV31mrJ7zavwjmvxVDIQF6h.jpeg"), participant_number: '5', day_time_at: 'Sun, 28 June 2020', user_id: '4'},
    {title: '稲川淳二の怪談ナイト', address: '西東京市保谷こもれびホール メインホール', content: 'ミステリーナイト当日、何らかの怪奇現象が引き起こした不慮の事故に関して主催者は一切の責任を負いませんのであらかじめご了承ください...。', outline: '「今年もアイツらがやってくる・・・」', icon:File.open("#{Rails.root}/app/assets/images/img_03.jpg"), participant_number: '30', day_time_at: 'Sun, 21 June 2020', user_id: '5'}
  ]
)
