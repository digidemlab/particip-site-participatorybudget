INSERT INTO `core_template` (`template_name`, `template_value`) VALUES ('extend_favorite', '<#-- Boutons larges de mise/suppression en favori d\'une PROP ou d\'un PSOUM, en mode déconnecté et connecté -->\r\n<#if show == "statusButton">\r\n	<div class="status-btn-favorite">\r\n		<#if canFavorite> <#-- Vaut \'true\' si et seulement si l\'usager est connecté -->\r\n			<#if  canDeleteFavorite> <#-- Vaut \'true\' si l\'usager a déjà mis le projet en favori -->\r\n				<a class="btn btn btn-14rem btn-black-on-white" alt="Add to favorites" id="nomore" href="jsp/site/plugins/extend/modules/favorite/DoCancelFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">\r\n					Add to favorites\r\n				</a>\r\n			<#else>\r\n				<a class="btn btn btn-14rem btn-black-on-white" title="Add to favorites" href="jsp/site/plugins/extend/modules/favorite/DoFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&favoriteValue=1">Add to favorites</a>\r\n			</#if>\r\n		<#else>\r\n			<a class="btn btn btn-14rem btn-black-on-white btn-connect" title="Add to favorites" href="jsp/site/plugins/extend/modules/favorite/DoFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&favoriteValue=1">Add to favorites</a>\r\n		</#if>\r\n	</div>\r\n</#if>\r\n  \r\n<#-- Liens iconifiés de mise/suppression en favori d\'une PROP ou d\'un PSOUM, en mode connecté uniquement -->\r\n<#if show == "tinylink">\r\n	<#if  canDeleteFavorite> <#-- Vaut \'true\' si l\'usager a déjà mis le projet en favori -->\r\n		<a class="link-favorite" alt="Remove from favorites" id="nomore" href="jsp/site/plugins/extend/modules/favorite/DoCancelFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">\r\n			<i class="fa fa-times" aria-hidden="true"></i>\r\n		</a>\r\n	<#else>\r\n		<a class="link-favorite" title="Add to favorites" href="jsp/site/plugins/extend/modules/favorite/DoFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&favoriteValue=1">\r\n			<i class="fa fa-plus" aria-hidden="true"></i>\r\n		</a>\r\n	</#if>\r\n</#if>\r\n  \r\n<#if !favoriteClosed>\r\n\r\n	<#-- Bloc descriptif de la notion d\'association à une proposition -->\r\n	<#if show == "all">\r\n		<div id="news-form">\r\n			<div id="info" class="row">\r\n				<div class="col-xs-12 col-sm-12 bg-color2">\r\n					By linking to a proposal, you can follow it :\r\n					<ul>\r\n						<li>You will be notified when a new comment is posted, or when the project reaches a new phase</li>\r\n						<li>If the proposal wins the vote, you can be associated to its realization.</li>\r\n					</ul>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-xs-12 col-sm-12">\r\n					<#if canDeleteFavorite>\r\n						<a class="btn btn btn-14rem btn-black-on-white" title="Unlink from this proposal" id="nomore" href="jsp/site/plugins/extend/modules/favorite/DoCancelFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">Unlink from this proposal</a>\r\n					</#if>\r\n					<#if canFavorite && !canDeleteFavorite >    \r\n						<p class="text-center"><a class="btn btn btn-14rem btn-black-on-white" title="Link to this proposal" href="jsp/site/plugins/extend/modules/favorite/DoFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&favoriteValue=1">Link to this proposal</a></p>\r\n					</#if>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</#if>\r\n	\r\n	<#-- Boutons de mise/suppression en favori d\'un projet -->\r\n	<#if show == "favoris">\r\n		<#if canDeleteFavorite>\r\n			<a id="fav-off" class="btn btn btn-14rem btn-black-on-white" title="Delete from favorites" href="jsp/site/plugins/extend/modules/favorite/DoCancelFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">\r\n				<span class="fa-stack visible-xs" title="Delete from favorites"><i class="fa fa-ban fa-stack-2x text-danger"></i></span></i><span class="hidden-xs">Delete from favorites</span>\r\n			</a>\r\n		<#elseif canFavorite && !canDeleteFavorite >    \r\n			<a id="fav-on" class="btn btn btn-14rem btn-black-on-white" title="Add to favorites"  href="jsp/site/plugins/extend/modules/favorite/DoFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&favoriteValue=1">\r\n				<span class="hidden-xs">Add to favorites</span>\r\n			</a>\r\n		<#else>\r\n		</#if>\r\n	</#if>\r\n  \r\n	<#-- Icônes de mise/suppression en favori d\'un projet -->\r\n	<#if show == "favtag">\r\n		<#if canDeleteFavorite>\r\n			<a class="btn-fav fav-on" title="Delete from favorites" href="jsp/site/plugins/extend/modules/favorite/DoCancelFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}" data-container="body" data-toggle="popover" data-template=\'<div class="popover fav-off" role="tooltip"><div class="arrow"></div><div class="popover-content"></div></div>\' data-trigger="hover" data-placement="top" data-content="Delete from favorites">&nbsp;</a>\r\n		<#elseif canFavorite && !canDeleteFavorite >    \r\n			<a class="btn-fav fav-off"  title="Add to favorites" href="jsp/site/plugins/extend/modules/favorite/DoFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&favoriteValue=1" data-container="body" data-toggle="popover" data-template=\'<div class="popover fav-on" role="tooltip"><div class="arrow"></div><div class="popover-content"></div></div>\' data-trigger="hover" data-placement="top" data-content="Add to favorites">&nbsp;</a>\r\n		</#if>\r\n	</#if>\r\n\r\n	<#-- Icône/bouton d\'association à une proposition -->\r\n	<#if show == "count">\r\n		<#if favorite??>\r\n			<div class="vote">\r\n				<#if canDeleteFavorite>\r\n					<a  href="jsp/site/plugins/extend/modules/favorite/DoCancelFavorite.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}" title="Unlink from this proposal">\r\n						<img src="images/local/skin/paper_plane.png">\r\n					</a>\r\n				</#if>\r\n				<#if canFavorite && !canDeleteFavorite >    \r\n					<img src="images/local/skin/paper_plane.png">\r\n				</#if>\r\n				<span class="scoring">${favorite.favoriteCount!}</span>\r\n			</div>\r\n		<#else>\r\n			<div class="vote">\r\n				<img src="images/local/skin/paper_plane.png">\r\n				<span class="scoring">0</span>\r\n			</div>  \r\n		</#if>\r\n	</#if>\r\n	\r\n<#else>\r\n\r\n	<#if show == "count">\r\n		<div class="vote">\r\n			<img src="images/local/skin/paper_plane.png">\r\n			<span class="scoring"><#if favorite??>${favorite.favoriteCount!}<#else>0</#if></span>\r\n		</div>  \r\n	</#if>\r\n	<#if show == "favoris">\r\n		<a class="btn btn btn-14rem btn-black-on-white" href="#" title="Add to favorites">Add to favorites</a>\r\n	</#if>\r\n\r\n</#if>');
INSERT INTO `core_template` (`template_name`, `template_value`) VALUES ('extend_follow', '<#-- Bloc descriptif de la notion d\'association à une PROP ou à un PSOUM, mode déconnecté et connecté -->\r\n<#if show == "all">\r\n	<div id="news-form">\r\n		<div id="info" class="row">\r\n			<div class="col-xs-12 col-sm-12 bg-color2">\r\n\r\n				<#if extendableResourceType == "IDEE">\r\n					<p>By linking to a proposal, you can follow it :</p>\r\n					<ul>\r\n						<li>You will be notified when a new comment is posted, or when the project reaches a new phase</li>\r\n						<li>If the proposal wins the vote, you can be associated to its realization.</li>\r\n					</ul>\r\n					<p>Your email address will be sent to proposal submitter, so he may contact you about this proposal.</p>\r\n					<p>You can unlink you from the proposal at everytime.</p>\r\n\r\n				<#elseif extendableResourceType == "document">\r\n					<p>By linking to a project, you can follow it.</p>\r\n					<p>If the project wins the vote, you will be notified about its realization.</p>\r\n					<p>You can unlink you from the project at everytime.</p>\r\n				</#if>\r\n			</div>\r\n		</div>\r\n		<div class="row">\r\n			<div class="col-xs-12 col-sm-12">\r\n				<#if canFollow>\r\n					<#-- L\'usager est connecté -->\r\n					<#if canDeleteFollow>\r\n						<#-- L\'usager est déjà follower : ne devrait pas arriver car la popin n\'est pas affichée dans ce cas ! -->\r\n						<p class="text-center"><a class="btn btn btn-14rem btn-black-on-white" title="Unlink" id="nomore" href="jsp/site/plugins/extend/modules/follow/DoCancelFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">Unlink</a></p>\r\n					<#else>\r\n						<#-- L\'usager n\'est pas encore follower -->\r\n						<p class="text-center"><a class="btn btn btn-14rem btn-black-on-white" title="Link" id="nomore" href="jsp/site/plugins/extend/modules/follow/DoFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&followValue=1">Link</a></p>\r\n					</#if>\r\n				<#else>    \r\n					<#-- L\'usager n\'est pas connecté, l\'extender va enclencher le processus de connexion puis va réaliser le DoFollow. Si l\'usager était déjà follower, le DoFollow n\'agira pas. -->\r\n					<p class="text-center"><a class="btn btn btn-14rem btn-black-on-white btn-connect" title="Sign in and link" href="jsp/site/plugins/extend/modules/follow/DoFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&followValue=1">Sign in and link</a></p>\r\n				</#if>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</#if>\r\n	\r\n<#-- Boutons larges de mise/suppression d\'association à une PROP ou à un PSOUM, en mode déconnecté et connecté -->\r\n<#if show == "statusButton">\r\n	<div class="status-btn-follow">\r\n		<#if canFollow> <#-- Vaut \'true\' si et seulement si l\'usager est connecté -->\r\n			<#if  canDeleteFollow> <#-- Vaut \'true\' si l\'usager est déjà associé -->\r\n				<p>You are linked</p>\r\n				<a class="btn btn btn-14rem btn-black-on-white" alt="Unlink" id="nomore" href="jsp/site/plugins/extend/modules/follow/DoCancelFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">\r\n					Unlink\r\n				</a>\r\n			<#else>\r\n				<p>You are not linked yet</p>\r\n				<button class="btn btn-14rem btn-black-on-white" type="button" data-toggle="modal" data-target="#modalConfirmFollow">\r\n					Link\r\n				</button>\r\n			</#if>\r\n		<#else>\r\n			<p>Sign in and link !</span></p>\r\n			<button class="btn btn-14rem btn-black-on-white" type="button" data-toggle="modal" data-target="#modalConfirmFollow">\r\n				Link\r\n			</button>\r\n		</#if>\r\n	</div>\r\n</#if>\r\n\r\n<#-- Liens iconifiés d\'association/désassociation à une PROP ou à un PSOUM, en mode connecté uniquement -->\r\n<#if show == "tinylink">\r\n	<#if  canDeleteFollow> <#-- Vaut \'true\' si l\'usager est déjà associé au projet -->\r\n		<a class="link-follow" alt="Unlink" id="nomore" href="jsp/site/plugins/extend/modules/follow/DoCancelFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">\r\n			<i class="fa fa-times" aria-hidden="true"></i>\r\n		</a>\r\n	<#else>\r\n		<a class="link-follow" title="Link" href="jsp/site/plugins/extend/modules/follow/DoFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&followValue=1">\r\n			<i class="fa fa-plus" aria-hidden="true"></i>\r\n		</a>\r\n	</#if>\r\n</#if>\r\n\r\n<#if !followClosed>\r\n\r\n	<#if show == "subscribe">\r\n		<#if canDeleteFollow>\r\n			<a id="fav-off" class="btn btn btn-14rem btn-black-on-white" title="Stop following" href="jsp/site/plugins/extend/modules/follow/DoCancelFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}">\r\n				<span class="fa-stack visible-xs" title="Stop following"><i class="fa fa-ban fa-stack-2x text-danger"></i></span></i><span class="hidden-xs">Stop following</span>\r\n			</a>\r\n		<#elseif canFollow && !canDeleteFollow >    \r\n			<a id="fav-on" class="btn btn btn-14rem btn-black-on-white" title="Follow"  href="jsp/site/plugins/extend/modules/follow/DoFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&followValue=1">\r\n				<span class="hidden-xs">Follow</span>\r\n			</a>\r\n		<#else>\r\n		</#if>\r\n	</#if>\r\n  \r\n	<#-- Icônes de mise/suppression en favori d\'un PSOUM -->\r\n	<#if show == "favtag">\r\n		<#if canDeleteFollow>\r\n			<a class="btn-fav fav-on" title="Delete from favorites" href="jsp/site/plugins/extend/modules/follow/DoCancelFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}" data-container="body" data-toggle="popover" data-template=\'<div class="popover fav-off" role="tooltip"><div class="arrow"></div><div class="popover-content"></div></div>\' data-trigger="hover" data-placement="top" data-content="Delete from favorites">&nbsp;</a>\r\n		<#elseif canFollow && !canDeleteFollow >    \r\n			<a class="btn-fav fav-off"  title="Add to favorites" href="jsp/site/plugins/extend/modules/follow/DoFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&followValue=1" data-container="body" data-toggle="popover" data-template=\'<div class="popover fav-on" role="tooltip"><div class="arrow"></div><div class="popover-content"></div></div>\' data-trigger="hover" data-placement="top" data-content="Add to favorites">&nbsp;</a>\r\n		</#if>\r\n	</#if>\r\n\r\n	<#-- Icône/bouton d\'association à une PROP -->\r\n	<#if show == "count">\r\n		<#if follow??>\r\n			<#if canDeleteFollow>\r\n				<a href="jsp/site/plugins/extend/modules/follow/DoCancelFollow.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}" title="Unlink">\r\n					<div class="follow btn btn-14rem btn-black-on-white">\r\n						<p>${follow.followCount!}</p>\r\n					</div>\r\n				</a>\r\n			</#if>\r\n			<#if canFollow && !canDeleteFollow >    \r\n				<a href="#" data-toggle="modal" data-target="#modalConfirmFollow" title="Link" >\r\n					<div class="follow btn btn-14rem btn-black-on-white">\r\n						<p>${follow.followCount!}</p>\r\n					</div>\r\n				</a>\r\n			</#if>\r\n		<#else>\r\n			<a href="#" data-toggle="modal" data-target="#modalConfirmFollow" title="Link" >\r\n				<div class="follow btn btn-14rem btn-black-on-white">\r\n					<p>0</p>\r\n				</div>  \r\n			</a>\r\n		</#if>\r\n	</#if>\r\n	\r\n<#else>\r\n\r\n	<#-- Le FOLLOW est fermé -->\r\n	<#if show == "count">\r\n		<a href="#" data-toggle="modal" data-target="#modalConfirmFollow" title="Link" >\r\n			<div class="follow btn btn-14rem btn-black-on-white">\r\n				<p><#if follow??>${follow.followCount!}<#else>0</#if></p>\r\n			</div>\r\n		</a>\r\n	</#if>\r\n	<#if show == "subscribe">\r\n		<a class="btn btn-14rem btn-black-on-white" href="#" title="Link">Link</a>\r\n	</#if>\r\n\r\n</#if>	');
