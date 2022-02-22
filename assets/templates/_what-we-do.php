<section id="what-we-do" class="bg-light">
    <div class="container p-5">
        <div class="row">
            <?php foreach ($database->getData('services') as $item): ?>
            <div class="card p-5 m-4" style="width:450px">
                <div class="card-body">
                    <h2 class="text-info"><?php echo $item["service_name"]; ?></h2>
                    <p><?php echo $item["service_details"]; ?></p>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</section>
