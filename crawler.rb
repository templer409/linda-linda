require "anemone"

URL = "https://www.qjnavi.jp/search?technical_rank=biyoshi,biyoshi-assistant,biyoshi-colorist,reception,hairmake,eyelash,nail,esthe"

# user_agent
@user_agent = [
  "Mozilla /5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B5110e Safari/601.1",
  "Mozilla/5.0 (iPhone; U; CPU iPhone OS 5_1_1 like Mac OS X; en) AppleWebKit/534.46.0 (KHTML, like Gecko) CriOS/19.0.1084.60 Mobile/9B206 Safari/7534.48.3",
  "Mozilla/5.0 (Linux; U; Android 2.2.1; en-us; Nexus One Build/FRG83) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1",
  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12",
  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9",
  "Mozilla/5.0 (Macintosh; U; Intel Mac OS X; ja-jp) AppleWebKit/523.12 (KHTML, like Gecko) Version/3.0.4 Safari/523.12",
  "Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; ja-jp) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/4.1.3 Safari/533.19.4",
  "Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 635; Vodafone) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537",
  "Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 735) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537",
  "Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 925) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1",
  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/10.0 Safari/602.1.31",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) CriOS/61.0.3163.73 Mobile/15A372 Safari/602.1",
  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38.0.7 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38.0.7 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) FxiOS/8.3b5826 Mobile/15A372 Safari/604.1.38",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) GSA/34.1.167176684 Mobile/15A372 Safari/602.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Mobile/15A372 Safari Line/7.12.0",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Mobile/15A372 Safari/604.1.38 Sleipnir/4.3.5m",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.0 Mobile/14F89 Safari/602.1/Smooz/1.12.0.235",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Mobile/15A372 YJApp-IOS jp.co.yahoo.ipn.appli/4.8.0",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac OS X) AppleWebKit/604.5.2 (KHTML, like Gecko) Version/11.0 Mobile/15D5046b Safari/604.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac OS X) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0 Mobile/15C153 Safari/604.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac OS X) AppleWebKit/604.4.7 (KHTML, like Gecko) Mobile/15C153 YJApp-IOS jp.co.yahoo.ipn.appli/4.8.11",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_1_1 like Mac OS X) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0 Mobile/15B150 Safari/604.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_1 like Mac OS X) AppleWebKit/604.3.5 (KHTML, like Gecko) Version/11.0 Mobile/15B93 Safari/604.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Mobile/15A432 YJApp-IOS jp.co.yahoo.ipn.appli/4.8.11",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_2 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A456 Safari/602.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) GSA/21.4.141508723 Mobile/14A456 Safari/600.1.4",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G36 Safari/601.1",
  "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A346 Safari/602.1"
]
# IPアドレスは、インスタンスの起動・停止するたびに変化する。

opts = {
  user_agent: @user_agent[rand(31)],
  delay: 10, #アクセス間隔の指定秒数
  depth_limit: 5 #探索する階層数

  # accept_cookies: true,
  # cookies:
}

# depth_limit: 1
Anemone.crawl(URL, opts) do |anemone|

  anemone.focus_crawl do |page|

    # 条件に一致するリンクだけ残す
    # この `links` はanemoneが次にクロールする候補リスト
    # technical_rank でURLを抽出するとひとつだけ「求人検索」というページが出てきているが、これは取得しない。
    # https://www.qjnavi.jp/search?technical_rank=biyoshi,biyoshi-assistant,biyoshi-colorist,reception,hairmake,eyelash,nail,esthe&page=#{0-92?} から、1800ページのリンクを取得する。
    page.links.keep_if { |link|
      link.to_s.match(/technical_rank/)
    }
  end

  #90ページ*20salon=1800salon_pageを取得した後, ①cssのセレクタ(.title-head__main)で個別ページに侵入
  anemone.on_every_page do |page|

    #
    # title-head__main [Search画面を算出]
    # %20 は半角スペースを示す。
    page.doc.css("title").each do |var|
        puts var
    end


    puts page.url

      # URLを取得
    # puts page.body
    # p @user_agent[rand(31)]
  end
end
