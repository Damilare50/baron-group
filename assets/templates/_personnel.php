<section id="personnel" class="container py-5">
    <h3 class="text-center font-size-30">Key Personnel</h3>
    <div class="owl-carousel owl-theme">
        <?php foreach ($database->getData('personnel') as $item) : ?>
        <div class="item">
            <article class="card mt-4 mr-3 border-0 personnel-section-bg" style="width:300px">
                <img class="card-img-top" src="<?php echo $item["personnel_image"]; ?>" alt="Personnel image">
                <div class="card-body">
                    <h4 class="card-title"><?php echo $item["personnel_name"]; ?></h4>
                    <p class="text-success text-uppercase font-weight-bold"><?php echo $item["personnel_role"]; ?></p>
                    <p><a class="personnel-download-link" href="#">Download V-Card</a></p>
                    <button href="#" class="btn personnel-btn" data-toggle="modal" data-target="#personnelModal<?php echo $item['personnel_id']; ?>">READ BIO</button>
                </div>
            </article>
        </div>
        <?php endforeach; ?>
    </div>
    <div id="modals">
        <?php foreach ($database->getData('personnel') as $item) : ?>
        <div class="modal fade" id="personnelModal<?php echo $item['personnel_id']; ?>">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
            
                <!-- Modal Header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col">
                        <img src="<?php echo $item["personnel_image"]; ?>" alt="Personnel image" style="width:300px">
                        </div>
                        <div class="col">
                        <h4><?php echo $item["personnel_name"]; ?></h4>
                        <p class="text-success text-uppercase font-weight-bold"><?php echo $item["personnel_role"]; ?></p>
                        <p><?php echo $item["personnel_bio"]; ?></p>
                        </div>
                    </div>
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer justify-content-start">
                    <button type="button" class="btn btn-info">Contact</button>
                    <button type="button" class="btn btn-danger">Download V-Card</button>
                </div>
            
                </div>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
</section>
