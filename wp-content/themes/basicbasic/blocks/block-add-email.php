<div class="add-action" 
    style="background: #F1F1F1; margin: 10px; padding: 20px; 
    box-shadow: 5px 10px 8px #888888; border-radius: 5px; text-align: center;">
    <h4><?php block_field('username');?></h4>
    <img src="<?php block_field('image');?>" alt="img"
    style="border-radius: 40px; width: 80px; height: 80px;">
    <p><?php block_field('email');?></p>
    <a style="display: inline-block; background: #7A7A7A; 
    color: #fff; padding: 12px 18px; border-radius: 5px; text-decoration: none;" 
    href="<?php block_field('button-url');?>"><?php block_field('button-text');?></a>
</div>


