jQuery(function() {
    //ヘッダーが見えなくなった時、上部に固定させる用の情報
    var nav = jQuery('#menu');
    var navTop = nav.offset().top;

    //ついでに背景の座標移動を1/20にする
    var getHeight = $('body').height();

    //スクロールした時の処理
    jQuery(window).scroll(function() {
        //サイト上部座標
        var winTop = jQuery(this).scrollTop();
        //見えなくなったらfixedを適用
        if (winTop >= navTop && nav.hasClass('fixed') == false) {
            nav.addClass('fixed')
            nav.css({ "top": '-100px' });
            nav.animate({ "top": 0 }, 1000);
        } else if (winTop <= navTop && nav.hasClass('fixed') == true) {
            nav.removeClass('fixed')
        }

        var ScrollTop = $(document).scrollTop(); //上部を基準にしたスクロール場所の取得
        var bgPosition = 80 / getHeight * ScrollTop + 10;　 // 80←%を動かす値(10%→90%等), 10←初期値
        $('body').css( //background-position-yのコントロール
            { backgroundPositionY: bgPosition + "%" }
        );
    });
});