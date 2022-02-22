<section id="projects" class="container p-5">
    <h4 class="text-info">Featured projects</h4>
    <div class="owl-carousel">
        <?php
            foreach ($database->getData('projects') as $item) {
        ?>
        <article class="item card shadow mt-4 mr-2 project" style="width:300px">
            <img class="card-img-top" src="<?php echo $item["project_image"]; ?>" alt="Project image">
            <div class="card-body">
                <h3 class="text-info card-title"><?php echo $item["project_header"]; ?></h3>
                <p class="card-text"><?php echo $item["project_details"]; ?></p>
                <a href="#" class="btn btn-outline-success project-btn">View Project</a>
            </div>
        </article>
        <?php 
            };
        ?>
    </div>
    <h6 class="p-4"><a href="./projects.php" id="projects-va" class="btn btn-outline-secondary project-btn">View all</a></h6>
</section>