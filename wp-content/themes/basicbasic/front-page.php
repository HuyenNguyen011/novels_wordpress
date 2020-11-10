<?php get_header(); ?> 

<div class="container"> 
    <section id="home-slider">
        <div class="container">
        <?php echo do_shortcode('[metaslider id="38"]'); ?>
        </div>
    </section>
</div> 

<!-- giới thiệu điểm nổi bật  -->
<section id="home-features" class='section bg-grey'>
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-4">
                <div class="icon-box">
                    <img class="icon-box--img" src="<?php get_template_directory_uri() ?>/wordpress-w2/wp-content/uploads/2020/11/App.png" alt="novel-1">
                    <h3 class="icon-box--title">
                        App diễn viên kinh dị 
                    </h3>
                    <p class="icon-box-desc">
                        Tạ Trì, nhân cách phân liệt chứng người bệnh.
                    Mặt ngoài văn nhã thanh tuyển, phó nhân cách lại là rõ đầu rõ đuôi ma quỷ, bạo lực lại hung tàn.
                    
                    </p>
                </div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="icon-box">
                    <img class="icon-box--img" src="<?php get_template_directory_uri() ?>/wordpress-w2/wp-content/uploads/2020/11/logo2.png" alt="4-lef">
                    <h3 class="icon-box--title">
                        Cỏ bốn lá
                    </h3>
                    <p class="icon-box-desc">
                    Cỏ bốn lá là một biến dạng bất thường của cỏ ba lá thông thường. Người ta tin rằng cỏ bốn lá đem lại may mắn cho những ai tình cờ tìm thấy chúng.
                    </p>
                </div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="icon-box">
                    <img class="icon-box--img" src="<?php get_template_directory_uri() ?>/wordpress-w2/wp-content/uploads/2020/11/logo.png" alt="rate">
                    <h3 class="icon-box--title">
                        Đánh giá WP
                    </h3>
                    <p class="icon-box-desc">
                        WP hơi đơn sơ, chưa có gì.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>