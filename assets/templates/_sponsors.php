<section id="sponsors" class="container py-5">
    <h4 class="text-info text-center">Tenant Relationships</h4>
    <div class="p-4 text-center">
        <div class="owl-carousel owl-theme">
            <?php
                foreach ($database->getData('sponsors') as $item) :
            ?>
            <div class="item">
                <img class="sponsor-images mr-3 mb-3" title="<?php echo $item["sponsor_name"]; ?>" src="<?php echo $item["sponsor_logo"]; ?>" alt="<?php echo $item["sponsor_name"]; ?>Adidas_logo">
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>