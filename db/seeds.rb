User.create!(
  [
    {id: '1', name: 'satou', email: 'satou@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/satou.png"), password: '111111', birthed_at: '1990-01-10', sex: '男', address: '東京都台東区上野５丁目２４−１１', mobile_number: '090-1111-2222', introduction: '宜しくお願いします' },
    {id: '2', name: 'tanaka', email: 'tanaka@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/tanaka.png"), password: '222222', birthed_at: '1989-02-10', sex: '女', address: '東京都中野区中野1丁目４−１', mobile_number: '080-1211-2222', introduction: '初めまして' },
    {id: '3', name: 'suzuki', email: 'suzuki@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/suzuki.jpeg"), password: '333333', birthed_at: '1985-05-16', sex: '男', address: '神奈川県川崎市川崎2丁目４−１', mobile_number: '070-1211-2222', introduction: '鈴木です。宜しく' },
    {id: '4', name: 'kimura', email: 'kimura@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/kimura.jpeg"), password: '444444', birthed_at: '1977-03-20', sex: '男', address: '静岡県静岡市掛川4丁目４−１', mobile_number: '090-1211-2222', introduction: '木村です。頑張りましょう' },
    {id: '5', name: 'sakamoto', email: 'sakamoto@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/sakamoto.jpeg"), password: '555555', birthed_at: '1950-04-20', sex: '男', address: '栃木県栃木市5丁目４−１', mobile_number: '090-1211-3333', introduction: '坂本です。初めまして' },
    {id: '6', name: '管理者', email: 'admin@yahoo.co.jp', icon:File.open("#{Rails.root}/app/assets/images/sakamoto.jpeg"), password: '555555', birthed_at: '1950-04-20', sex: '男', address: '栃木県栃木市5丁目４−１', mobile_number: '090-1211-3333', introduction: '管理者です。初めまして', admin: 'true' }
  ]
)


Movie.create!(
  [
    {title: 'クワイエット・プレイス', content: '音を立てたら即死　静寂の世界で生き延びるホラー', icon:File.open("#{Rails.root}/app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"), user_id: '1'},
    {title: '史上最も不快なホラーがついに公開！', content: '姉は精神を病み家に囚われ、妹は家を出て幸せを手に入れた。 姉妹がその家で再会した時、あの惨劇が再び幕を開ける―', icon:File.open("#{Rails.root}/app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"), user_id: '2'},
    {title: '果たして少女は魔女なのか!?', content: '本作は全世界24の映画祭に招待され、ファンの圧倒的な支持を獲得した新感覚のダーク・ファンタジー・ホラー！', icon:File.open("#{Rails.root}/app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"), user_id: '3'},
    {title: '『コンジアム』', content: '実在する精神病院の廃墟を舞台としたコリアンホラー', icon:File.open("#{Rails.root}/app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"), user_id: '4'},
    {title: 'パソコンに表示されたSNSが...', content: 'SNSの画面だけで展開する新感覚ホラー。仲良しグループが、ネットいじめで自殺した少女の怨念に襲われる恐怖を描く。', icon:File.open("#{Rails.root}/app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"), user_id: '5'},
    {title: '血も凍る学園ホラー、本当に恐ろしいのは誰!?', content: '小さなモンスターを捕まえて独自の「調査」と「実験」を始めるが、やがてモンスターは彼らの手に負えなくなっていく', icon:File.open("#{Rails.root}/app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"), user_id: '1'}
  ]
)

Map.create!(
  [
    {name: '番町皿屋敷（お菊の皿）', address: '東京都千代田区五番町', content: '市ヶ谷駅近辺、千代田区九段南四丁目と五番町の境界の靖国通りから番町方面へ上る坂は、帯坂と呼称されるが、お菊が、髪をふり乱し、帯をひきずりながらここを通ったという曰くがある。', horror_level: '★★', icon:File.open("#{Rails.root}/app/assets/images/okiku_hirosige.jpg")},
    {name: 'NTT上野ビル', address: '東京都台東区上野５丁目２４−１１', content: '江戸幕府の彰義隊を葬った場所。工事の際、人骨や刀の鍔が出てきたそうな。工事中色々有ったので屋上に供養塔が有り、ビル内には仏壇も有るという。', horror_level: '★★', icon:File.open("#{Rails.root}/app/assets/images/NTT-E-ueno91.jpg")},
    {name: '白金トンネル', address: '東京都品川区上大崎２丁目ー７', content: '事故が多発し心霊スポット化。隣の国立科学博物館附属自然教育園は、元は国立予防衛生研究所だったため、その因縁も噂される。', horror_level: '★★★', icon:File.open("#{Rails.root}/app/assets/images/s_MG_9207.jpg")},
    {name: 'たっちゃん池（宅部池）', address: '東京都東村山市多摩湖町３丁目１７−１９', content: '大正14年、たっちゃんと呼ばれていた少年が池に落ち、助けに入った青年2人と共に亡くなる。', horror_level: '★★★', icon:File.open("#{Rails.root}/app/assets/images/maxresdefault.jpg")},
    {name: '八王子トンネル', address: '東京都八王子市国道16号線', content: '赤い洋服を着た幽霊がでるという噂もあり、肝試しで訪れる方も多い心霊スポット。トンネルは霊が集まりやすい場所と言われていますので、安易な気持ちで近づかないようにご注意。', horror_level: '★★★★', icon:File.open("#{Rails.root}/app/assets/images/180_1.jpg")}
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


Experience.create!(
  [
    {title: 'こっくりさん', outline: '勝手にコインが動いていく...', content: '硬貨に参加者全員の人差し指を添えていく。全員が力を抜いて「コックリさん、コックリさん、おいでください。」と呼びかけると勝手に硬貨が動く。', procedure: '1:まずは白い紙に「はい」と「いいえ」と書き、その間に鳥居を書きます。その下には数字・五十音などを書きます。2:2～3人程度で机を囲み、鳥居の位置に10円玉を置きます。全員で人差し指を十円玉の上に置き、こっくりさんを呼ぶ儀式をします。3:「こっくりさん、こっくりさん、どうぞおいでください。もしおいでになられましたら『はい』へお進みください」と話しかけると、十円玉が「はい」の位置に動き始めます。', danger_level: '1', number_of_incident: '', icon:File.open("#{Rails.root}/app/assets/images/こっくりさん.png")},
    {title: 'スリーキングス', outline: '窓がない大きな部屋で...', content: '午前3時33分ちょうどに地下室に置いた椅子に座る。鏡やロウソクには決して目を向けず、暗闇の方の一点だけを見つめ続けていると“それ”は現れるという。', procedure: '1:ロウソクとライター、バケツ一杯の水、2枚の大きな鏡、3脚の椅子、子ども時代に使っていた物を用意。2:部屋のドアを開けた状態にして、時計のアラームを午前3時30分ピッタリに設定し眠る。4:アラームが鳴り終わると、火をつけた1本のロウソクを持ち午前3時33分ちょうどに地下室に置いた椅子に座る。5:鏡やロウソクには決して目を向けず、暗闇の方の一点だけを見つめ続けていると“それ”は現れる。', danger_level: '1', number_of_incident: '', icon:File.open("#{Rails.root}/app/assets/images/スリーキングス.jpeg")},
    {title: 'ブラッディ・メアリー', outline: '血まみれの女性が目の前に...', content: '火をつけたロウソクを持ち鏡の前で「ブラッディ・メアリー」と3回唱えると、血まみれの女性が目の前に現れる。', procedure: '1:火をつけたローソクを持つ。2:午前０時に鏡の前で「ブラッディ・メアリー」と三回唱える。', danger_level: '2', number_of_incident: '', icon:File.open("#{Rails.root}/app/assets/images/ブラッディメアリー.jpeg")},
    {title: '異世界に繋がるエレベーター', outline: '決して返事をしてはいけない...', content: '開いた扉の向こう側には、この世とは全く別の世界が広がっている。', procedure: '1:10階建て以上のエレベーターに乗り込み、行き先階を表示したボタンを4階・2階・6階・2階・10階・5階の順番で押す。2:5階に到着したエレベーターに1人の女性が乗り込んでくるが、決して彼女の姿を見たり声を掛けてはいけない。3:1階へのボタンを押すと、エレベーターは指示に反して上昇を続け10階に到着する。そして開いた扉の向こう側には、この世とは全く別の世界が広がっている。', danger_level: '2', number_of_incident: '', icon:File.open("#{Rails.root}/app/assets/images/異世界へのエレベーター.jpeg")},
    {title: 'ひとりかくれんぼ', outline: '実行すると怪奇現象に...', content: 'ひとりかくれんぼとは、日本の近代怪談の1つで、いわゆる都市伝説である[1]。ひとり鬼ごっことも呼ばれ、[2] 危険な降霊術（または呪術）とされ、コックリさんよりも危険だとされている。', procedure: '下準備としてぬいぐるみに名前をつけ、詰め物を全て出して代わりに米と自分の爪（切って入れる）を入れて縫い合わせる[4][7]。余った糸は、ある程度ぬいぐるみに巻きつけて結ぶ[5][7]。中に入れる米はぬいぐるみの内臓を、赤い糸は血管を表しているともいう[1]。隠れ場所を決めておき、そこに塩水を用意しておく[1][7]。
    午前3時になったら以下の順に行動する[7][9]（以下、自分の名前：○○、ぬいぐるみの名前：△△とする）。
    ぬいぐるみに対して「最初の鬼は○○だから[1][7]」と3回言い、浴室に行き、水を張った風呂桶にぬいぐるみを入れる[6][7]。
    家中の照明を全て消してテレビだけつけ（砂嵐の画面だが、アナログ停波により実施不可能[1][6]）、目を瞑って10秒数える[1][9]。
    刃物を持って風呂場に行き、「△△見つけた」と言って刺す[7][9]。
    「次は△△が鬼だから[7]」または「次は△△が鬼[1]」と言い、自分は塩水のある隠れ場所に隠れる', danger_level: '3', number_of_incident: '', icon:File.open("#{Rails.root}/app/assets/images/ひとりかくれんぼ.jpeg")},
    {title: '自宅に霊がいるか確かめる方法', outline: 'ご自宅に幽霊がいるかどうか簡単に...', content: '目を閉じて想像で自分の家の玄関から入って各部屋をまわり全部の部屋をまわり終えてまた玄関から出る。その間で誰か人とすれ違ったらそこにいる。', procedure: '1:目を閉じる。2:想像で自宅の玄関から各部屋を回る。3:全部屋廻り終えたら玄関から出る。4:その間誰かとすれ違ったら幽霊がいる。', danger_level: '3', number_of_incident: '', icon:File.open("#{Rails.root}/app/assets/images/自宅に霊がいるか.jpeg")}
  ]
)
