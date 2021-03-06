{*<!-- {[The file is published on the basis of YetiForce Public License that can be found in the following directory: licenses/License.html]} --!>*}
{strip}
	<div class="breadCrumbs" >
		{if isset($BREADCRUMB_TITLE)}
			{assign var="BREADCRUMBS" value=Core\Menu::getBreadcrumbs($BREADCRUMB_TITLE)}
		{else}
			{assign var="BREADCRUMBS" value=Core\Menu::getBreadcrumbs()}
		{/if}
		
		{assign var=HOMEICON value='userIcon-Home'}
		{if !empty($BREADCRUMBS)}
			<div class="breadcrumbsContainer">
				<h2 class="breadcrumbsLinks textOverflowEllipsis">
					<a href='{\Config::get('portalPath')}'>
						<span class="{$HOMEICON}"></span>
					</a>
					&nbsp;|&nbsp;
					{foreach key=key item=item from=$BREADCRUMBS name=breadcrumbs}
						{if $key != 0 && $ITEM_PREV}
							<span class="separator">&nbsp;>&nbsp;</span>
						{/if}
						{if isset($item['url'])}
							<a href="{$item['url']}">
								<span>{$item['name']}</span>
							</a>
						{else}
							<span>{$item['name']}</span>
						{/if}
						{assign var="ITEM_PREV" value=$item['name']}
					{/foreach}
				</h2>
			</div>
		{/if}			
	</div>
{/strip}
