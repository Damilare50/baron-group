<section id="press-releases">
    <div class="container my-5">
        <div class="row">
            <div class="col-lg-8">
                <h2 class="font-size-30">Press releases</h2>
                <div id="accordion" class="my-5">
                    <?php foreach($database->getData('news') as $item): ?>
                        <div class="card my-3">
                            <div class="card-header">
                                <a class="collapsed card-link" data-toggle="collapse" href="#collapse<?php echo $item["news_id"]; ?>"><?php echo $item["news_headline"]; ?></a>
                            </div>
                            <div id="collapse<?php echo $item["news_id"]; ?>" class="collapse" data-parent="#accordion">
                                <div class="card-body">
                                <p class="press-news-exp"><?php echo $item["news_details"]; ?></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="bg-light p-4 rounded-lg">
                    <h2 class="font-size-30">Press releases</h2>
                    <ul id="newsletter-items" class="nav flex-column p-4">
                        <li class="nav-item">
                            <a class="nav-link" href="">2020 Newsletter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">2020 Newsletter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">2020 Newsletter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">2020 Newsletter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">2020 Newsletter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">2020 Newsletter</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>