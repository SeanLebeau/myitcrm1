<!-- work_order_head.tpl -->
<table class="olotable" width="100%" border="0" cellpadding="4" cellspacing="0">
	<tr>
		<td class="olohead">{$translate_workorder_id}</td>
		<td class="olohead">{$translate_workorder_opened}</td>
		<td class="olohead">{$translate_workorder_state}</td>
		<td class="olohead">{$translate_workorder_scope}</td>
		<td class="olohead">{$translate_workorder_status}</td>
		<td class="olohead">{$translate_workorder_tech}</td>
		<td class="olohead">{$translate_workorder_last_change}</td>
		{if $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "1" || $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "10"}
		<td class="olohead">{$translate_workorder_delete}</td>
		{/if}
	</tr><tr>
		<td class="olotd4">{$single_workorder_array[i].WORK_ORDER_ID}</td>
		<td class="olotd4">{$single_workorder_array[i].WORK_ORDER_OPEN_DATE|date_format:"%d-%m-%Y"}</td>
		<td class="olotd4">
			{if $single_workorder_array[i].WORK_ORDER_STATUS == "10"}
				{$translate_workorder_open}
			{elseif $single_workorder_array[i].WORK_ORDER_STATUS == "9"}	
				{$translate_workorder_pending}	
			{elseif $single_workorder_array[i].WORK_ORDER_STATUS == "6"}
				{$translate_workorder_closed}
			{/if}
			
		</td>
		<td class="olotd4">{$single_workorder_array[i].WORK_ORDER_SCOPE}</td>
		<td class="olotd4">
		{if $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "1"}
			{$translate_workorder_created}
		{elseif $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "2"}
			{$translate_workorder_assigned}
		{elseif $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "3"}
			{$translate_workorder_waiting_for_parts}
		{elseif $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "6"}
			{$translate_workorder_closed}
		{elseif $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "7"}	
				{$translate_workorder_waiting_for_payment}
		{elseif $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "8"}	
				{$translate_workorder_payment_made}
		{elseif $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "9"}	
				{$translate_workorder_pending}	
		{/if}</td>
		<td class="olotd4">
		{if $single_workorder_array[i].EMPLOYEE_DISPLAY_NAME ==""}
				{$translate_workorder_not_assigned}
		{else}
			<img src="images/icons/16x16/view+.gif" border="0" onMouseOver="ddrivetip('<center><b>Contact</b></center><hr><b>Work: </b>{$single_workorder_array[i].EMPLOYEE_WORK_PHONE}<br><b>Mobile: </b>{$single_workorder_array[i].EMPLOYEE_MOBILE_PHONE}<br><b>Home: </b>{$single_workorder_array[i].EMPLOYEE_HOME_PHONE}')" onMouseOut="hideddrivetip()"> 
			<a class="link1" href="?page=employees:employee_details&employee_id={$single_workorder_array[i].EMPLOYEE_ID}&page_title={$single_workorder_array[i].EMPLOYEE_DISPLAY_NAME}">{$single_workorder_array[i].EMPLOYEE_DISPLAY_NAME}</a>
		{/if}
			
		</td>
		<td class="olotd4">{$single_workorder_array[i].LAST_ACTIVE|date_format:"%d-%m-%Y"}</td>
		{if $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "1" || $single_workorder_array[i].WORK_ORDER_CURRENT_STATUS == "10"}
				<td class="olotd4">
					<form method="POST">
						<input type="submit" name="submit" value="{$translate_workorder_delete}"/>
					</form>
				</td>
		{/if}

	</tr>
</table>
	
