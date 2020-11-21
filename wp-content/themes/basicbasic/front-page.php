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
                        Giới thiệu
                    </h3>
                    <p class="icon-box-desc">
                        WP hơi đơn sơ, chưa có gì.
                        <br>Nhóm 2 người dựng wp
                        <br>Name:
                        <br>Huyền 
                        <br>Như

                    </p>
                </div>
            </div>
        </div>
        <!--List New Post-->
        <section id="home-new-posts" class='section'>
            <div class="container">
                <h2 class="section-title">
                    Bài viết mới nhất
                </h2>
                <?php
                    $np_args = [
                        'post_type' => 'post'
                    ];
                    $np_result = new WP_Query($np_args);

                    if($np_result->have_posts()):
                    while($np_result->have_posts()):
                        $np_result->the_post();
                ?>
                <div class="row home-newpost">
                    <div class="col-12 col-lg-12 col-xl-12">
                        <h3 class="home-newpost--title">
                            <a href="<?= the_permalink(); ?>">
                                <?= the_title(); ?>
                            </a>
                        </h3>
                        <div class="home-newpost--meta mb-20">
                            <?= the_category(); ?> <br>
                        </div>
                        <div class="home-newpost--excerpt">
                            <?= the_excerpt(); ?>
                        </div>
                    </div>
                </div>
                <?php
                endwhile;
            else:
            ?>
            <div class="row">
                <div class="col">
                    <h4 class="text-danger">Chưa có bài viết, vui lòng quay lại sau!</h4>
                </div>
            </div>
            <?php endif; ?>
    </div>
</section>
    </div>
</section>
<div class="notification-mail">
    <?php echo do_shortcode('[contact-form-7 id="37" title="Contact form 1"]'); ?>
</div>
<?php get_footer();?>