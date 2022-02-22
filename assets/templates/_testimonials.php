<section id="testimonials" class="container py-5">
    <div class="row">
        <div class="col-lg-3 p-5 text-center">
            <h3 class="font-size-30">Testimonials</h3>
        </div>
        <div class="col-lg-9 font-size-20">
            <div class="owl-carousel">
                <?php
                    foreach ($database->getData('testimonials') as $testimonial):
                ?>
                <div class="item">
                    <p>"<?php echo $testimonial["testimonial_body"]; ?>"</p>
                    <small class="font-weight-small text-success"><?php echo $testimonial["testimonial_header"]; ?></small>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>