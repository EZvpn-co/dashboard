<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit the user &mdash; {$config["appName"]}</title>
		<link href="{$metron['assets_url']}/css/client/metron-icon.css" rel="stylesheet" type="text/css" />
        {include file='include/global/head.tpl'}
        <div class="d-flex flex-column flex-root">
            <div class="d-flex flex-row flex-column-fluid page">
                <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
                    {include file='include/global/menu.tpl'}
                    <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                        <div class="subheader min-h-lg-175px pt-5 pb-7 subheader-transparent" id="kt_subheader">
                            <div class="container d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                                <div class="d-flex align-items-center flex-wrap mr-2">
                                    <div class="d-flex flex-column">
                                        <h2 class="text-white font-weight-bold my-2 mr-5">Edit the user #{$edituser->id}</h2>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <a href="/user/agent" class="btn {$style[$theme_style]['global']['btn_subheader']} font-weight-bold py-3 px-6">Return to the agent center</a>
                                </div>
                            </div>
                        </div>

                        <div class="d-flex flex-column-fluid">
                            <div class="container">

								<div class="card card-custom {$metron['style_shadow']}">
									<div class="card-header card-header-tabs-line nav-tabs-line-3x">
										<div class="card-toolbar">
											<ul class="nav nav-tabs nav-bold nav-tabs-line nav-tabs-line-3x">
												<li class="nav-item mr-3">
													<a class="nav-link active" data-toggle="tab" href="#user_edit_tab_1">
														<span class="nav-icon">
															<span class="svg-icon">
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<polygon points="0 0 24 0 24 24 0 24" />
																		<path d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z" fill="#000000" fill-rule="nonzero" />
																		<path d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z" fill="#000000" opacity="0.3" />
																	</g>
																</svg>
															</span>
														</span>
														<span class="nav-text font-size-lg">Edit profile</span>
													</a>
												</li>
												<li class="nav-item mr-3">
													<a class="nav-link" data-toggle="tab" href="#user_edit_tab_2">
														<span class="nav-icon">
															<span class="svg-icon">
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<polygon points="0 0 24 0 24 24 0 24" />
																		<path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
																		<path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#000000" fill-rule="nonzero" />
																	</g>
																</svg>
															</span>
														</span>
														<span class="nav-text font-size-lg">Plans</span>
													</a>
												</li>
												<li class="nav-item mr-3">
													<a class="nav-link" data-toggle="tab" href="#user_edit_tab_3">
														<span class="nav-icon">
															<span class="svg-icon">
																<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
																	<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
																		<polygon points="0 0 24 0 24 24 0 24" />
																		<path d="M12,11 C9.790861,11 8,9.209139 8,7 C8,4.790861 9.790861,3 12,3 C14.209139,3 16,4.790861 16,7 C16,9.209139 14.209139,11 12,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" />
																		<path d="M3.00065168,20.1992055 C3.38825852,15.4265159 7.26191235,13 11.9833413,13 C16.7712164,13 20.7048837,15.2931929 20.9979143,20.2 C21.0095879,20.3954741 20.9979143,21 20.2466999,21 C16.541124,21 11.0347247,21 3.72750223,21 C3.47671215,21 2.97953825,20.45918 3.00065168,20.1992055 Z" fill="#000000" fill-rule="nonzero" />
																	</g>
																</svg>
															</span>
														</span>
														<span class="nav-text font-size-lg">Subscription</span>
													</a>
												</li>
											</ul>
										</div>
									</div>

									<div class="card-body px-0">
										<form class="form" id="kt_form">
											<div class="tab-content">

												<div class="tab-pane show active px-7" id="user_edit_tab_1" role="tabpanel">
													<div class="row">
														<div class="col-xl-2"></div>
														<div class="col-xl-7 my-2">
															<div class="row">
																<label class="col-3"></label>
																<div class="col-9">
																	<h6 class="text-dark font-weight-bold mb-10">User profile:</h6>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Avatar</label>
																<div class="col-9">
																	<div class="image-input image-input-empty image-input-outline" id="kt_user_edit_avatar" style="background-image: url({$edituser->getGravatarAttribute()})">
																		<div class="image-input-wrapper"></div>
																		<!--<label class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="change" data-toggle="tooltip" title="" data-original-title="Modify the picture">
																			<i class="fa fa-pen icon-sm text-muted"></i>
																			<input type="file" name="profile_avatar" accept=".png, .jpg, .jpeg" />
																			<input type="hidden" name="profile_avatar_remove" />
																		</label>-->
																		<span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="cancel" data-toggle="tooltip" title="Cancel avatar">
																			<i class="ki ki-bold-close icon-xs text-muted"></i>
																		</span>
																		<span class="btn btn-xs btn-icon btn-circle btn-white btn-hover-text-primary btn-shadow" data-action="remove" data-toggle="tooltip" title="Remove avatar">
																			<i class="ki ki-bold-close icon-xs text-muted"></i>
																		</span>
																	</div>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Username</label>
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid" type="text" value="{$edituser->user_name}" name="user_name"/>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Email</label>
																{if $metron['register_restricted_email'] === true}
																<div class="col-9">
																	<div class="input-group input-group-lg input-group-solid">
																		<input type="text" class="form-control" value="{$email[0]}" name="email"/>
																		<div class="input-group-append">
																			<select class="form-control selectpicker" id="email_suffix">
																				{foreach $metron['list_of_available_mailboxes'] as $emailsuffix}
																					<option value='{$emailsuffix}' {if $emailsuffix == $email[1]} selected="selected"{/if}>{$emailsuffix}</option>
																				{/foreach}
																			</select>
																		</div>
																	</div>
																</div>
																{else}
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid" type="text" value="{$edituser->email}" name="email"/>
																</div>
																{/if}
															</div>
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">New password</label>
																<div class="col-9">
																	<input class="form-control form-control-lg form-control-solid" type="password" value="" name="password"/>
																	<span class="form-text text-muted">Do not change the password leave blank</span>
																</div>
															</div>
															<div class="form-group row mb-2">
																<label class="col-form-label col-3 text-lg-right text-left">Status</label>
																<div class="col-3">
																	<span class="switch">
																		<label>
																			<input type="checkbox" {if $edituser->enable === 1}checked="checked"{/if} name="enable" />
																			<span></span>
																		</label>
																	</span>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left"> </label>
																<div class="col-9">
																	<button type="button" class="btn btn-primary" id="edit_user_save" onclick="agent.edit_user('edit_user');">Save</button>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="tab-pane show px-7" id="user_edit_tab_2" role="tabpanel">
													<div class="row">
														<div class="col-xl-2"></div>
														<div class="col-xl-7 my-2">
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left">Choose plan</label>
																<div class="col-9">
																	<select class="form-control" id="edit_user_shop" >
																		<optgroup label="{$shop_plan@key}" data-max-options="2">
																			<option value="0" selected="selected">There is no plan</option>
																		</optgroup>
																		{foreach $metron['shop_plan'] as $shop_plan}
																		<optgroup label="{$shop_plan@key}" data-max-options="2">
																		{foreach $shop_plan as $shop_info}
																		{foreach $shop_info as $shop_id}
																			{foreach $shops as $shop}
																			{if $shop->id === $shop_id}
																			<option value="{$shop->id}">{$shop_plan@key} - {$shop_id@key} - ${$shop->price}</option>
																			{/if}
																			{/foreach}
																		{/foreach}
																		{/foreach}
																		</optgroup>
																		{/foreach}
																	</select>
																	<span class="form-text text-muted">
																	You must have sufficient credit in your account
																	<br />You can see detail of plans in Shop
																	</span>
																</div>
															</div>
															<div class="form-group row">
																<label class="col-form-label col-3 text-lg-right text-left"> </label>
																<div class="col-9">
																	<button type="button" class="btn btn-primary" id="edit_user_buy_shop" onclick="agent.edit_user('buy_shop');">Buy</button>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="tab-pane px-7" id="user_edit_tab_3" role="tabpanel">
													<div class="row">
														<div class="col-xl-2"></div>
														<div class="col-xl-7">
															<div class="my-2">
																<div class="form-group row">
																	<label class="col-form-label col-3 text-lg-right text-left">Subscription</label>
																	<div class="col-9">
																		{include file='include/index/sub_button.tpl'}
																	</div>
																</div>
																<div class="form-group row">
																	<label class="col-form-label col-3 text-lg-right text-left">Reset subscription</label>
																	<div class="col-9">
																		<button type="button" class="btn btn-primary font-weight-bold btn-sm" id="edit_user_reset_link" onclick="agent.edit_user('reset_link');">Reset</button>
																		<div class="form-text text-muted mt-3">Reset the user's subscription link, Users will not be able to use the old subscription after reset</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

											</div>
										</form>
									</div>
								</div>

                            </div>
                        </div>
                    </div>
                    {include file='include/global/footer.tpl'}
                </div>
            </div>
        </div>
        {include file='include/global/scripts.tpl'}
    </body>
</html>