<section id="projects">
    <div class="container mx-auto my-5">
        <h2 class="font-size-30">Projects</h2>
        <div class="row m-5">
            <?php foreach ($database->getData('projects') as $item): ?>
            <article class="item card shadow m-4 project" style="width:300px">
                <img class="card-img-top" src="<?php echo $item["project_image"]; ?>" alt="Project image">
                <div class="card-body">
                    <h3 class="text-info card-title"><?php echo $item["project_header"]; ?></h3>
                    <p class="card-text"><?php echo $item["project_details"]; ?></p>
                    <a href="#" class="btn btn-outline-success project-btn">View Project</a>
                </div>
            </article>
            <?php endforeach; ?>
        </div>
    </div>
</section>