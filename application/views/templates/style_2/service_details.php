<?php include APPPATH.'views/include/banner2.php'; ?>

<section class="pt-0 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-8 m-auto">
          <a class="btn btn-light-secondary btn-sm btn-pill mb-2" href="<?php echo $_SERVER['HTTP_REFERER'] ?>"><i class="lni lni-arrow-left"></i> Back</a>
          <div class="card">
              <div class="card-body p-0">
                  <div class="col-12 text-center p-0">
                      <div class="service-banner-img p-0 border-1" style="background-image:url('<?php echo base_url($service->image) ?>')"></div>
                  </div>
                
                  <div class="d-flex justify-content-between align-items-center pt-3 pl-3 pr-3">
                      <div class="col-md-6s">
                        <h2 class="h4 font-weight-normal pt-2 mb-0"><?php echo html_escape($service->name) ?></h2>
                        <span class="pr-0">
                            <?php if ($company->enable_rating == 1 && get_total_rating_user($service->id) > 2): ?>
                                <?php $rating = get_ratings_info($service->id);?>
                                <?php $average = number_format($rating->total_point/$rating->total_user, 1) ?>

                                <?php if (get_total_rating_user($service->id) > 0): ?>
                                  <?php for($u = 1; $u <= 5; $u++):?>
                                    <?php 
                                      if ( round($average - .25) >= $u) {
                                            $star = "fas fa-star";
                                        } elseif (round($average + .25) >= $u) {
                                            $star = "fas fa-star-half-alt";
                                        } else {
                                            $star = "far fa-star";
                                        }
                                    ?>
                                    <i class="<?php echo $star;?> text-warning fs-12"></i> 
                                  <?php endfor;?>
                                  
                                <?php endif ?>
                            <?php endif ?>
                        </span>
						                         

                      </div>

                      <div class="col-md-6s">
                          <span class="pr-3">
							  
                              <?php if ($service->price == 0): ?>
                                  <?php echo trans('price') ?>: <?php echo trans('free') ?>
                              <?php else: ?>
                                  <?php echo trans('price') ?>: <?php if($company->curr_locate == 0){echo get_currency_by_country($company->country)->currency_symbol;} ?> <?php echo number_format($service->price, $company->num_format) ?> <?php if($company->curr_locate == 1){echo get_currency_by_country($company->country)->currency_symbol;} ?>
                              <?php endif ?>
                          </span>
                          <span class="pr-3"><?php echo trans('duration') ?>: <?php echo html_escape($service->duration).' '.trans($service->duration_type); ?></span>
                      </div>
					  <div class="col-md-6s">
					   <a href="<?php echo base_url('booking'.$slug) ?>" class="btn btn-primary btn-sm mt-4"><i class="icon icon-calendar"></i> <?php echo trans('book-now') ?></a>
					  </div>
                  </div>

                  <div class="row p-3">
                      <div class="col-md-12 text-left">
                          <p class="h5 font-weight-normal"><?php echo trans('staffs') ?></p>
                          <?php $staffs = json_decode($service->staffs);?>
                          <?php if (!empty($staffs)): ?>
                              <div class="staffs-list2 align-items-left">
                                  <?php foreach ($staffs as $staff): ?>
                                      <img class="staff-avatar" src="<?php echo base_url(get_by_id($staff, 'staffs')->thumb) ?>" data-toggle="tooltip" data-placement="top" title="<?php echo get_by_id($staff, 'staffs')->name; ?>">
                                  <?php endforeach ?>
                              </div>
                          <?php endif ?>
                      </div>

                      <div class="col-md-12 text-left mt-6">
                          <?php echo $service->details ?>
                      </div>
                  </div>

                  <?php if ($company->enable_rating == 1 && get_total_rating_user($service->id) > 2): ?>
                  <h2 class="h4 font-weight-normal border-1 p-3"><?php echo trans('service-ratings') ?></h2>
                  <div class="row p-3">
                      <?php  
                        $ratings = get_all_ratings($service->id);
                        $rating = get_ratings_info($service->id);
                        $report = get_single_ratings($service->id);
                      ?>

                      <?php $average = number_format($rating->total_point/$rating->total_user, 1) ?>
                      <?php if ($average != 0): ?>
                      
                        <div class="col-sm-4">
                          <div class="rating-block">
                            <h6><?php echo trans('average-rating') ?></h6>
                             <?php for($i = 1; $i <= 5; $i++):?>
                              <?php 
                                if ( round($average - .25) >= $i) {
                                      $star = "fas fa-star";
                                  } elseif (round($average + .25) >= $i) {
                                      $star = "fas fa-star-half-alt";
                                  } else {
                                      $star = "far fa-star";
                                  }
                              ?>
                              <i class="<?php echo $star;?> text-warning"></i> 
                            <?php endfor;?>
                            <h5 class="bold"><?php echo $average; ?> <small>(<?php echo get_total_rating_user($service->id) ?> <?php echo trans('ratings') ?>)</small></h5>
                          </div>
                        </div>

                        <div class="col-sm-6">
                          <h6><?php echo trans('ratings-summary') ?></h6>
                          
                          <div class="d-flex justify-content-between">
                            <div class="pull-lefts" style="width:10%; line-height:1;">
                              <div style="height:9px; margin:5px 0;"> <span class="fa fa-star text-warning"> </span> 5</div>
                            </div>
                            <div class="pull-lefts" style="width:65%;">
                              <div class="progress" style="height:9px; margin:8px 0;">
                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $report->five/$report->total_user*100; ?>%">
                                <span class="sr-only"></span>
                                </div>
                              </div>
                            </div>
                            <div class="pull-rights" style="width:15%;"><?php echo $report->five ?></div>
                          </div>

                          <div class="d-flex justify-content-between">
                            <div class="pull-lefts" style="width:10%; line-height:1;">
                              <div style="height:9px; margin:5px 0;"> <span class="fa fa-star text-warning"></span> 4</div>
                            </div>
                            <div class="pull-lefts" style="width:65%;">
                              <div class="progress" style="height:9px; margin:8px 0;">
                                <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="4" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $report->four/$report->total_user*100; ?>%">
                                <span class="sr-only"></span>
                                </div>
                              </div>
                            </div>
                            <div class="pull-rights" style="width:15%"><?php echo $report->four ?></div>
                          </div>

                          <div class="d-flex justify-content-between">
                            <div class="pull-lefts" style="width:10%; line-height:1;">
                              <div style="height:9px; margin:5px 0;"> <span class="fa fa-star text-warning"></span> 3</div>
                            </div>
                            <div class="pull-lefts" style="width:65%;">
                              <div class="progress" style="height:9px; margin:8px 0;">
                                <div class="progress-bar bg-secondary" role="progressbar" aria-valuenow="3" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $report->three/$report->total_user*100; ?>%">
                                <span class="sr-only"></span>
                                </div>
                              </div>
                            </div>
                            <div class="pull-rights" style="width: 15%"><?php echo $report->three ?></div>
                          </div>

                          <div class="d-flex justify-content-between">
                            <div class="pull-lefts" style="width:10%; line-height:1;">
                              <div style="height:9px; margin:5px 0;"> <span class="fa fa-star text-warning"></span> 2</div>
                            </div>
                            <div class="pull-lefts" style="width:65%;">
                              <div class="progress" style="height:9px; margin:8px 0;">
                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $report->two/$report->total_user*100; ?>%">
                                <span class="sr-only"></span>
                                </div>
                              </div>
                            </div>
                            <div class="pull-rights" style="width: 15%"><?php echo $report->two ?></div>
                          </div>

                          <div class="d-flex justify-content-between">
                            <div class="pull-lefts" style="width:10%; line-height:1;">
                              <div style="height:9px; margin:5px 0;"> <span class="fa fa-star text-warning"></span> 1</div>
                            </div>
                            <div class="pull-lefts" style="width:65%;">
                              <div class="progress" style="height:9px; margin:8px 0;">
                                <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="5" style="width: <?php echo $report->one/$report->total_user*100; ?>%">
                                <span class="sr-only"></span>
                                </div>
                              </div>
                            </div>
                            <div class="pull-rights" style="width: 15%"><?php echo $report->one ?></div>
                          </div>
                        </div>  

                      <?php else: ?>
                        <div class="col-sm-12 text-center">
                          <?php echo trans('no-data-found') ?>
                        </div>  
                      <?php endif ?>

                  </div>      
            
                  <div class="row p-3">
                      <div class="col-sm-12">
                 
                        <div class="review-block">
                          <?php foreach ($ratings as $rating): ?>
                            <div class="row">
                              <div class="col-sm-2 text-center">
                                <?php if (empty($rating->patient_thumb)): ?>
                                  <?php $avatar = 'assets/front/img/avatar.png'; ?>
                                <?php else: ?>
                                  <?php $avatar = $rating->customer_thumb; ?>
                                <?php endif ?>
                                <img width="80px" src="<?php echo base_url($avatar) ?>" class="img-thumbnail">
                                <div class="review-block-name mt-1 badges badge-secondarys"><?php echo $rating->customer_name ?></div>
                              </div>
                              <div class="col-sm-10 pl-0">
                                <?php for($i = 1; $i <= 5; $i++):?>
                                  <?php 
                                  if($i > $rating->rating){
                                    $star = 'far fa-star';
                                  }else{
                                    $star = 'fas fa-star';
                                  }
                                  ?>
                                  <i class="<?php echo $star;?> text-warning"></i> 
                                <?php endfor;?>
                                <div class="review-block-description mt-2"><?php echo $rating->feedback ?></div>
                                <div class="review-block-date small mt-1"><i class="far fa-calendar-alt"></i>  <?php echo my_date_show($rating->created_at) ?></div>
                              </div>
                            </div><hr/>
                          <?php endforeach ?>
                        </div>
                      </div>
                  </div>
                  <?php endif ?>

              </div>
          </div>
        </div>
      </div>
    </div>
</section>