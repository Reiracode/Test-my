-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 09 月 06 日 11:22
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `reirasys`
--
-- --------------------------------------------------------
--
-- 資料表結構 `order_list`
--

CREATE TABLE `order_list` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `item_no` int(12) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `datatime` datetime NOT NULL,
  `userno` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_list`
--

INSERT INTO `order_list` (`id`, `item_no`, `name`, `price`, `amount`, `datatime`, `userno`) VALUES
(00000000001, 000000000291, 'Easy Chair', 120000, 1, '2022-05-10 16:21:05', '000002'),
(00000000002, 000000000291, 'Easy Chair', 120000, 1, '2022-05-10 16:21:06', '000002'),
(00000000003, 000000000203, '#40 Sewing Table by Severin Hansen Jr', 135000, 1, '2022-05-10 16:25:48', '000002'),
(00000000004, 000000000203, '#40 Sewing Table by Severin Hansen Jr', 135000, 1, '2022-05-10 16:26:27', '000002'),
(00000000005, 000000000203, '#40 Sewing Table by Severin Hansen Jr', 135000, 1, '2022-05-10 16:28:51', '000002'),
(00000000006, 000000000291, 'Easy Chair', 120000, 1, '2022-05-10 16:29:01', '000002'),
(00000000007, 000000000122, 'No.209 Diplomat Chair by Finn Juhl', 184000, 1, '2022-05-11 13:28:43', '000002'),
(00000000007, 000000000642, 'Small Table', 120000, 1, '2022-05-11 13:28:43', '000002');

-- --------------------------------------------------------

--
-- 資料表結構 `order_no`
--

CREATE TABLE `order_no` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `userno` varchar(255) NOT NULL DEFAULT '',
  `recip_name` varchar(255) NOT NULL DEFAULT '',
  `recip_street` varchar(255) NOT NULL,
  `recip_mobile` varchar(255) NOT NULL DEFAULT '',
  `recip_mail` varchar(255) NOT NULL DEFAULT '',
  `recip_ps` varchar(255) NOT NULL DEFAULT '',
  `datatime` datetime NOT NULL,
  `county` varchar(255) NOT NULL DEFAULT '',
  `district` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_no`
--

INSERT INTO `order_no` (`id`, `userno`, `recip_name`, `recip_street`, `recip_mobile`, `recip_mail`, `recip_ps`, `datatime`, `county`, `district`) VALUES
(00000000001, '000002', 'tttn ', 'ef2', '0999399393', 'reira.lin@gmail.com', '121', '2019-12-17 18:19:21', '', ''),
(00000000002, '000002', 'tttn ', 'ef2', '0999399393', 'reira.lin@gmail.com', '121', '2019-12-17 19:45:09', '', ''),
(00000000003, '000002', '1', '1', '0933993993', 'e.ee@gmail.com', '', '2019-12-17 19:55:51', '', ''),
(00000000004, '000002', '林文五', '台北市萬路11號', '0933735570', '0933735570@gmail.com', '', '2022-04-22 18:30:30', '台北市', '中正區'),
(00000000005, '000002', '林文五', '台北市萬路11號', '0933735570', '0933735570@gmail.com', '', '2022-04-22 18:30:45', '台北市', '中正區'),
(00000000006, '000002', '林文五', '台北市萬路11號', '0933735570', '0933735570@gmail.com', '', '2022-04-22 18:31:21', '台北市', '中正區'),
(00000000007, '000002', '林文五', '台北市萬路11號', '0933735570', '0933735570@gmail.com', '', '2022-04-22 18:31:24', '台北市', '中正區'),
-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `pro_img` varchar(255) NOT NULL DEFAULT '',
  `main_title` varchar(255) NOT NULL DEFAULT '',
  `detail_title` varchar(255) NOT NULL DEFAULT '',
  `pro_price` int(11) NOT NULL,
  `maker` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `pro_img`, `main_title`, `detail_title`, `pro_price`, `maker`) VALUES
(00000000001, '0000000003603_Y07WXcv.jpg', 'Bureau', 'Bureau', 195000, ''),
(00000000002, '0000000006273_nHD1vpT.jpg', 'Square Dish by Nils Thorsson', '', 14500, ''),
(00000000003, '0000000006283_PxF56kJ.jpg', 'Shore Bird designed by Sigurjon Palsson', '', 8400, ''),
(00000000004, '0000000006583_Nl7Datc.jpg', '【4脚セット】 Arm Chair by Rud Thygesen &amp; Johnny Sorense', '', 200000, ''),
(00000000005, '0000000006873_WdWvrYc.jpg', 'Plate designed by Beth Breyen', '', 3600, ''),
(00000000006, '0000000007023_mztow8l.jpg', 'GE530 Arm Chair by Hans J Wegne', '', 420000, ''),
(00000000007, '0000000000780_QyGzUOp.jpg', 'Easy Chair designed by Ingmar Relling', '', 150000, ''),
(00000000008, '0000000007383_XDtOtjt.jpg', 'Coffee Table by Grete Jalk', '', 200000, ''),
(00000000009, '0000000008503_R8QwgOK.jpg', 'Senetor Chai', '', 320000, 'Ole Wanscher'),
(00000000010, '0000000008273_SMuc48q.jpg', 'Coffee Table', '', 395000, ''),
(00000000011, '0000000008483_FV3gPsl.jpg', 'Vase', '', 7000, 'Ellen Malmar'),
(00000000012, '0000000008283_MAUXkzx.jpg', 'E290 Sofa by Hans J Wegner', '', 480000, '');

-- --------------------------------------------------------
--
-- 資料表結構 `shop_itemimg`
--

CREATE TABLE `shop_itemimg` (
  `id` int(12) UNSIGNED ZEROFILL NOT NULL,
  `img_no` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `shop_itemimg`
--

INSERT INTO `shop_itemimg` (`id`, `img_no`, `title`) VALUES
(000000000122, '1', ''),
(000000000122, '2', ''),
(000000000122, '3', ''),
(000000000203, '1', ''),
(000000000203, '2', ''),
(000000000203, '3', ''),
(000000000213, '1', ''),
(000000000213, '2', ''),
(000000000291, '1', ''),
(000000000291, '2', ''),
(000000000291, '3', ''),
(000000000291, '4', ''),
(000000000301, '1', ''),
(000000000301, '2', ''),
(000000000301, '3', ''),
(000000000370, '1', ''),
(000000000370, '2', ''),
(000000000370, '3', ''),
(000000000416, '1', ''),
(000000000416, '2', ''),
(000000000416, '3', ''),
(000000000470, '1', ''),
(000000000470, '2', ''),
(000000000470, '3', ''),
(000000000642, '1', ''),
(000000000642, '2', ''),
(000000000642, '3', ''),
(000000000657, '1', ''),
(000000000657, '2', ''),
(000000000657, '3', ''),
(000000000658, '1', ''),
(000000000658, '2', ''),
(000000000672, '1', ''),
(000000000672, '2', ''),
(000000000672, '3', ''),
(000000000692, '1', ''),
(000000000692, '2', ''),
(000000000692, '3', ''),
(000000000762, '1', ''),
(000000000762, '2', ''),
(000000000762, '3', ''),
(000000000762, '4', ''),
(000000000810, '1', ''),
(000000000810, '2', ''),
(000000000811, '1', ''),
(000000000811, '2', ''),
(000000000811, '3', ''),
(000000000843, '1', ''),
(000000000843, '2', ''),
(000000000848, '1', ''),
(000000000848, '2', ''),
(000000000858, '1', ''),
(000000000858, '2', ''),
(000000000858, '3', ''),
(000000000861, '1', ''),
(000000000861, '2', ''),
(000000000861, '3', ''),
(000000000861, '4', '');

-- --------------------------------------------------------

--
-- 資料表結構 `shop_itemlist`
--

CREATE TABLE `shop_itemlist` (
  `id` int(12) UNSIGNED ZEROFILL NOT NULL,
  `class` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(255) NOT NULL DEFAULT '',
  `price` int(25) NOT NULL,
  `material` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(255) NOT NULL DEFAULT '',
  `descript` varchar(255) NOT NULL DEFAULT '',
  `unpdate` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `shop_itemlist`
--

INSERT INTO `shop_itemlist` (`id`, `class`, `title`, `size`, `price`, `material`, `color`, `descript`, `unpdate`) VALUES
(000000000122, 'singleSofa', 'No.209 Diplomat Chair by Finn Juhl', 'W:700 D:670 H:800 (SH460)', 184000, 'fabric/rosewood', 'red', 'フィン・ユールによるこの椅子は外交官のためにデザインされたことからdiplomat（ディプロマット：外交官）チェアと呼ばれます。在日デンマーク大使館でも長年に渡り使用されてきました。', 'OK'),
(000000000203, 'table', '#40 Sewing Table by Severin Hansen Jr', 'W:590 D:440 H:520', 135000, 'teak', 'teak', 'severin hansen jrは 1950年代から60年代初めにかけて、haslevの小さな町にある家具メーカー、haslevmøbelsnedkeriでロイヤルコペンハーゲンとのコラボレート作品を多く手がけたことで知られています。\n彼は素材としてローズウッドを使うことが多く、チーク材を使用した作品は珍しい部類に入ります。', 'Ok\n'),
(000000000213, 'singleSofa', 'GE240 3seaters sofa by Hans J Wegner', 'W:1750 D:790 H:750(SH420)', 680000, 'fabric/teak/oak', 'check', 'ハンス・J・ウェグナーのGE240ソファです。アームの形状が葉巻に似ていることからシガーとも呼ばれたこちらのソファは290とまた一味違う、丸みを帯びた優しいデザインです。\nベースのオークにチークのアームが映えます。', 'OK'),
(000000000291, 'singleSofa', 'Easy Chair', 'W:800 D:870 H:970 (SH440)', 120000, 'fabric/rosewood', 'gray', 'デンマーク製のやや大き目のハイバックイージーチェア。肩からアームの先にかけて流れるカーブはエレガントな印象で、落ち着いた色調のファブリックと共に居住空間に上質な空気感をもたらしてくれるのではないでしょうか。', 'OK\n'),
(000000000301, 'singleSofa', 'High back Chair', 'W:710 D:810 H:910(SH:410)', 290000, 'fabric/teak', 'purple', 'デンマークで見つけたハイバックチェアです。フォームがウェグナーのベアチェアを彷彿とさせるスタイルで、座ってみると更に強く感じることが出来ます。特に広く作られている背中部分はホールド感が高く、\n手を置く位置に設えられた木製のパーツは心地よく馴染みます。', 'OK. https://unsplash.com/@michsole'),
(000000000370, 'multiSofa', 'GE290 3seaters sofa by Hans J Wegner', 'W:1810 D:830 H:730 (SH410)', 591000, 'fabric/oak', 'check', '1953年にGETAMA社より発売されたGE290はウェグナーの名前とともに世界に広がり、2018年には65周年を迎える超ロングセラー。頑強なオークフレームは半世紀を経た今でも揺るぎなく、安心して次の50年を託せる力強さです。', 'OK'),
(000000000416, '飾口雜貨', 'Jug designed by Berte Jessen', 'W:145 D:120 H:125', 19800, 'potter', '', 'Royal Copenhagen Teneraシリーズの水差し。ベルテ・イェッセンによるデザイン。陶器の下地として錫釉を使用するファイアンス焼きを採用しており、明るい色は鮮やかに発色することで暗い色とのコントラストが際立つ表現が特徴です。釉薬の色が混じり合う様子が非常に美しく、細かな凹凸が光を受けてキラキラと輝くことで繊細なデザインがより引き立ちます。こちらはヴィンテージアイテムになりますが目立った汚れやダメージもなく、良好なコンディションです。', 'https://unsplash.com/@jtylernix OK'),
(000000000470, 'LAMP/照明器具', 'Metal Lamp', 'W:650 D:650 H:650', 140000, 'metal', '', 'デンマークで見つけたヴィンテージメタルランプです。５つの灯りがガラスによって優雅に広がります。電球は付属いたしませんので、E-26口径のものを5つご準備ください。', 'OKhttps://unsplash.com/@srosinger3997'),
(000000000642, 'table', 'Small Table', 'W:730 D:730 H:520', 120000, 'rosewood', 'rosewood', 'デンマーク製のスモールテーブルです。直線的なフォルムにローズウッドのはっきりとした木目が美しく映えます。', 'OK'),
(000000000657, '飾口雜貨', 'Vase designed by Johanne Gerber', 'W:76 D:76 H:220', 19200, 'pottery', '', 'Royal Copenhagen VACAシリーズの花瓶。Johanne Gerberによるデザインです。陶器の下地として錫釉を使用するファイアンス焼きを採用しており、明るい色は鮮やかに発色することで暗い色とのコントラストが際立つ表現が特徴です。ハンドペインティングのため、絵付師によって同じパターンのものでも風合いが若干異なります。', 'OK\n'),
(000000000658, '飾口雜貨', 'Dish designed by Nils Thorsson', 'W:115 D:115 H:28', 13200, 'pottery', '', 'oyal Copenhagen BACAシリーズのスクエアディッシュ。ニールス・トーソンによるデザイン。鳥の羽に描かれた花のワンポイントが魅力です。ブルーと薄っすらと青みを帯びたホワイトの配色はコントラストがきつくなりすぎず柔らかい印象です。さらにオレンジをさし色として入れることで温かみも感じられます。陶器の下地として錫釉を使用するファイアンス焼きを採用しており、明るい色は鮮やかに発色することで暗い色とのコントラストが際立つ表現が特徴です。ハンドペインティングのため、絵付師によって同じパターンのものでも風', 'OK'),
(000000000672, 'LAMP/照明器具', 'Table Lamp', 'W:360 D:360 H:860', 51600, 'pottery', '', 'デンマークで見つけた陶器ベースのテーブルランプです。陶器の表面に施された色彩とパターンが空間を明るく演出します。ストリングシェードは見た目のスマートさを引き立てるだけではなく、点灯時の印象も独自の雰囲気', 'OK'),
(000000000692, 'BUREAU/ビューロー', 'BureauBUREAU / ビューロー', 'W:880 D:420 H:1080', 170000, 'teak/oak', 'teak', 'ビューローデンマーク製のライティングビューローです。チークのボディ部、\nオークの脚部ともフルサンディングを行いオイルで仕上げました。\n背面のベニヤは一部破れが見られたため新たに張り替え済みです。', 'OK'),
(000000000762, '飾口雜貨', 'Square Dish by Ellen Malmer', 'W:217 D:217 H:44', 12000, 'pottery', '', 'スクエアディッシュRoyal Copenhagen SIENAシリーズのスクエアディッシュ。エレン・マルマーによるデザインです。\nSIENAはBAKAに比べ形状が丸みを帯びており、色彩もイタリアの都市シエナの黄金色をした土から名付けられただけあり優しい黄金色がベースになっています。', 'OK\n'),
(000000000810, 'CHAIR/椅子', 'Bar Stool', 'W:365 D:365 H:790', 186000, 'leather / teak', 'leather / t', 'デンマーク製のバースツールです。チークの脚部とブラックレザーの座面にフットスタンドのシルバーが良いアクセントになっています。古き良き時代を思わせるバーの雰囲気を演出するのに最適なアイテムです。脚部はフルサンディングの後、オイルで仕上げる予定です。', 'Ok\n'),
(000000000811, 'Shelf', 'Shelf', 'W:1355 D:305 H:920', 163000, 'rosewood', '', 'デンマークで見つけたヴィンテージシェルフです。ローズウッドのフレームは縦の板で左右２分割されており、上下は短いピッチで調整可能な棚が合計2枚付属します。', 'OK'),
(000000000843, 'CHAIR/椅子', 'Grand Prix Chair by Arne Jacobsen', 'W:490 D:500 H:785 (SH:440)', 255000, 'leather / teak', 'orange', '先端部のパーツは僅かに欠けがみられますが、座り心地に影響するレベルではありません。オリジナルで原形を保ったコンディションのものはなかなか見つける事が難しく、そういった意味での希少性もございます。レザー部はコンディションが良好なため、クリーニングを行い、脚部はサンディング後オイルで仕上げる予定です。', 'OK\n'),
(000000000848, 'multiSofa', 'GE290 Sofa by Hans J Wegner', 'W:1800 D:900 H:720 (SH:395)', 637000, 'fabric/oak', 'green', 'ウェグナーによって緻密に計算された座角は誰もが認める極上の座り心地を実現。幅広のアームに体を預けるもよし、マグなどを置いて読書に没頭するもよし。どこから見ても絵になるシルエットとともに快適なリビングタイムをご提供いたします。', 'OK'),
(000000000858, 'singleSofa', '#169 Senetor Chair + ottoman by Ole Wanscher', 'W:690 D:760 H:810 (SH450)', 464000, 'leather / teak', 'black', 'やや厚めのクッション部分はコイルスプリング式でウレタンとは違った心地よい反発があり、\n柔らかな中にもしっかりとした座り心地を実現しています。\nオットマンは足置きとしての使用はもちろんの事、ちょっと腰をかけたり鞄を置いてみたり、様々な用途に活用されることが多い万能アイテムです。\n＊オットマンサイズ：630＊460＊410', 'OK'),
(000000000861, 'CHAIR/椅子', 'Arm Chair', 'W:650 D:720 H:800 (SH 410)', 444000, 'fabric/teak', 'blue', 'Glostrup Møbelfabrikより1956年に発表されたアームチェアです。デザイナーは不明ですが、シザー（ハサミ）のように交差した脚部や独立したパーツで構成されるアーム、接合部に採用されたフィンガージョイントなど、随所に美へのこだわりを感じることができます。', 'OK');

-- --------------------------------------------------------
--
-- 資料表結構 `sysuserss`
--

CREATE TABLE `sysuserss` (
  `userno` varchar(6) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `depno` varchar(6) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `regdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `sysuserss`
--

INSERT INTO `sysuserss` (`userno`, `username`, `password`, `depno`, `email`, `regdate`) VALUES
('000932', 'reiralin', '66d0a909cbc1d28b94c619ea409974ca800ac46a', 'MIS', 'reira.lin@xpec.com', '0000-00-00 00:00:00'),
('010394', 'reiralin', '730459bd364ea849e7d2224d156648839e7b384b', 'XPEC', 'xpec@gmail.com', '2022-04-28 17:21:08'),
('01212', '000002', '730459bd364ea849e7d2224d156648839e7b384b', 'MIS', 'reira.lin1111@xpec.com111', '2022-04-28 15:37:13'),
('012410', 'reiralin', '730459bd364ea849e7d2224d156648839e7b384b', 'MIT', 'xpec@gm.com', '2022-04-28 17:22:37'),
('12131', '111', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'MIS', '111@gmail.com', '2022-04-28 16:52:36'),
('99977', '000002', '730459bd364ea849e7d2224d156648839e7b384b', 'MIS', 'reir231@gmail.com', '2022-04-28 16:52:06'),
('99999', '000002', '730459bd364ea849e7d2224d156648839e7b384b', 'MIS', 'reir1231@gmail.com', '2022-04-28 15:44:35');

-- --------------------------------------------------------
-- 已傾印資料表的索引
--
--
-- 資料表索引 `order_no`
--
ALTER TABLE `order_no`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
--
-- 資料表索引 `shop_itemimg`
--
ALTER TABLE `shop_itemimg`
  ADD PRIMARY KEY (`id`,`img_no`);

--
-- 資料表索引 `shop_itemlist`
--
ALTER TABLE `shop_itemlist`
  ADD PRIMARY KEY (`id`);


-- 資料表索引 `sysuserss`
--
ALTER TABLE `sysuserss`
  ADD PRIMARY KEY (`userno`);

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_no`
--
ALTER TABLE `order_no`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shop_itemimg`
--
ALTER TABLE `shop_itemimg`
  MODIFY `id` int(12) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shop_itemlist`
--
ALTER TABLE `shop_itemlist`
  MODIFY `id` int(12) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

 