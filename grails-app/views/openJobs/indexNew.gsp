
<%@ page import="ContractorPortal.OpenJobs"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'openJobs.label', default: 'OpenJobs')}" />
	<r:require module="bootstrapTable"/>
<title><g:message code="default.list.label" args="[entityName]" /></title>

</head>
<body>
	<div class="col-xs-12">
		<h1 class="page-header">Open Jobs <small>${contractorName}</small></h1>
		<hr />
		<button class="btn btn-primary btn-xs filterPaneBtn" type="button" data-toggle="collapse" data-target="#filterPane" aria-expanded="false" aria-controls="filterPane" style="margin-right: 10px;">
			<i class="fa fa-fw fa-caret-down downIcon"></i><i class="fa fa-fw fa-caret-up upIcon hidden"></i> Filters
		</button>
		<button id="refresh" class="btn btn-xs btn-success"><i class="fa fa-fw fa-refresh"></i> Refresh</button>
	
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<div class="row" style="margin-top: 15px;">
		<div class="col-lg-12 collapse" id="filterPane">
			<form class="form form-inline" id="filtersForm">
				<div class="panel panel-default">
					<div class="panel-heading">
							<a id="clearFilters" class="btn btn-xs btn-danger"><i class="fa fa-fw fa-times"></i> Clear Filter</a>
							<button type="submit" class="btn btn-info btn-xs" id="filterBtn"><i class="fa fa-fw fa-filter"></i> Apply Filter</button>
					</div>
					<table class="table table-condensed">
						<tbody>
							<tr class="text-center">
								<td style="width: 75px;"></td>
								<td style="width: 75px;"><label class="control-label">Job ID</label><input type="text" class="form-control input-sm" name="id"/></td>
								<td><label class="control-label">Address</label><input class="form-control input-sm" name="address"></td>
								<td style="width: 250px;"><label class="control-label">Category</label><input type="text" class="form-control input-sm" name="category"></td>
								<td style="width: 250px;"><label class="control-label">Sub-Category</label><input type="text" class="form-control input-sm" name="subCategory"></td>
								<td style="width: 125px;"><label class="control-label">Date Issued</label><input type="text" class="form-control input-sm" name="dateIssued"></td>
								<td style="width: 110px;">
									<label class="control-label">Priority</label>
									<select name="priority" class="form-control input-sm">
										<option value=""></option>
										<option value="1">Today</option>
										<option value="7">1 Week</option>
										<option value="14">2 Weeks</option>
										<option value="30">4 weeks</option>
									</select>
								</td>
								<td style="width: 150px;"></td>
								<td style="width: 150px;"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		</div>
	</div>	
		<table id="listTable" data-classes="table table-bordered table-condensed" data-page-list="[15, 30, 50, 100]" data-query-params="queryParams" data-pagination="true"  data-page-size="15" data-side-pagination="server" data-toggle="table" data-url="${request.contextPath }/openJobs/index.json">
			<thead>
					<tr>
						<th class="text-center" data-width="75" data-field="id" data-formatter="jobShowFormatter"></th>
						<th class="text-center" data-width="75" data-sortable="true" data-field="id">Job ID</th>
						<th class="text-center" data-field="address" data-sortable="true">Address</th>
						<th class="text-center" data-width="250" data-sortable="true" data-field="category">Category</th>
						<th class="text-center" data-width="250" data-sortable="true" data-field="subCategory">Sub-Category</th>						
						<th class="text-center" data-width="125" data-sortable="true" data-field="dateInformed" data-formatter="dateFormatter">Date Job Issued</th>
						<th class="text-center" data-width="110" data-field="priority" data-sortable="true" data-formatter="priorityFormatter">Priority</th>
						<th class="text-center" data-width="150" data-formatter="jobStatusFormatter">Status</th>
						<th class="text-center" data-width="150" data-title="Action" data-formatter="jobActionFormatter"/>
					</tr>
				</thead>
			</table>
</div>
	<div class="col-xs-12 visible-xs" style="margin-top: 50px; padding-bottom: 0px;">
		<ul class="list-group">
			<g:each in="${openJobsInstanceList }" var="job">
			<g:link action="show" id="${job.id }">
				<li class="list-group-item">
					<div class="row">
						<div class="col-xs-2">
							${job.id }
						</div>
						<div class="col-xs-2">
							${job.clientId }
						</div>
						<div class="col-xs-4">
							${job.subCategory }
						</div>
						<div class="col-xs-2">
							<i class="fa fa-fw fa-flag priority-${job.priority}"></i>
						</div>
						<div class="col-xs-2">
							<g:if test="${openJobsInstance?.filter2 == 1 }">
								<span class="label label-lg label-info"	style="font-size: 0.8em;">New</span>
							</g:if>
							<g:elseif test="${openJobsInstance?.filter1 == 11 }">
								<span class="label label-lg label-warning" style="font-size: 0.8em;">Awaiting Invoice</span>
							</g:elseif> 
							<g:elseif test="${openJobsInstance?.filter1 == 12 }">
								<span class="label label-lg label-info" style="font-size: 0.8em;">Awaiting Quote</span>
							</g:elseif>
							<g:elseif test="${openJobsInstance?.filter1 > 30 && openJobsInstance.filter1 < 33 }">
								<span class="label label-lg label-danger text-center" style="font-size: 0.8em;">Awaiting Payment</span>
							</g:elseif>
							<g:else>
								<span class="label label-primary" style="font-size: 0.8em;">In Progress</span>
							</g:else>
						</div>
					</div>
				</li>
				</g:link>
			</g:each>
		</ul>
	</div>
	<div class="modal fade" id="invoiceModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Add Invoice</h4>
				</div>
				<div class="modal-body">
					<g:form class="form-horizontal" action="addInvoice" name="invoiceForm" enctype="multipart/form-data">
						<div class="form-group">
							<label class="control-label col-xs-3">Invoice Amount</label>
							<div class="input-group col-xs-6">
								<span class="input-group-addon"><i
									class="fa fa-gbp"></i></span> <input type="text"
									class="form-control" name="amount" id="invoiceAmount" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-xs-3">Invoice No.</label>
							<div class="input-group col-xs-6">
								<span class="input-group-addon">#</span> <input type="text"
									class="form-control" name="invoiceNo" id="invoiceNumber" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-xs-3">Invoice File</label>
							<div class="input-group col-xs-6">
								<input type="file" class="form-control" name="invoiceFile"
									id="invoiceFile" />
							</div>
						</div>
						<input type="hidden" name="jobId" id="iJobId" value=""/>
					</g:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><i class="fa fa-fw fa-times"></i> Close</button>
					<button type="button" class="btn btn-sm btn-primary" id="saveInvoice"><i class="fa fa-fw fa-upload"></i> Save</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="quoteModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Add Quote</h4>
				</div>
				<div class="modal-body">
					<g:form class="form-horizontal" action="addQuote" name="quoteForm" enctype="multipart/form-data">
						<div class="form-group">
							<label class="control-label col-xs-3">Quote File</label>
							<div class="input-group col-xs-9">
								<input type="file" class="form-control" name="quoteFile"
									id="quoteFile" />
							</div>
							<input type="hidden" name="jobId" id="qJobId" value=""/>
						</div>
					</g:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><i class="fa fa-fw fa-times"></i> Close</button>
					<button type="button" class="btn btn-sm btn-primary" id="saveQuote"><i class="fa fa-fw fa-upload"></i> Save</button>
				</div>
			</div>
		</div>
	</div>
	<g:javascript>
					
			//$('.addInvoice').click(function(){
			$(document).on('click','.addInvoice',function(){
				$('#iJobId').attr('value',$(this).data('jobid'));
			});
			//$('.addQuote').click(function(){
			$(document).on('click','.addQuote',function(){
				$('#qJobId').attr('value',$(this).data('jobid'));
			});
			//$('#saveInvoice').click(function(){
			$(document).on('click','#saveInvoice',function(){
				$('#invoiceForm').submit();			
			});
			//$('#saveQuote').click(function(){
			$(document).on('click','#saveQuote',function(){
				$('#quoteForm').submit();			
			});
			jobActionFormatter = function(value, row){
				var f1 = row['filter1'];
				var f2 = row['filter2'];
				if(f1=='11' || f1==30 || f2==11){
					return '<button class="btn btn-xs btn-warning addInvoice" data-toggle="modal" data-target="#invoiceModal" data-jobid="'+ row['id'] +'"><i class="fa fa-fw fa-plus"></i> Add Invoice</button>';
				}else if(f1=='12'){
					return '<button class="btn btn-xs btn-info addQuote" data-toggle="modal" data-target="#quoteModal" data-jobid="'+ row['id'] +'"><i class="fa fa-fw fa-plus"></i> Add Quote</button>';
				}else if(f1=='1'){
					return '<a class="btn btn-xs btn-success" href="${request.contextPath }/openJobs/acceptJob/' + row['id'] + '"><i class="fa fa-fw fa-thumbs-up"></i> Accept</a> \
							<a class="btn btn-xs btn-danger" href="${request.contextPath }/openJobs/rejectJob/' + row['id'] + '"><i class="fa fa-fw fa-thumbs-down"></i> Reject</a>';
				}else{
					return '<a class="btn btn-xs btn-success" href="${request.contextPath }/openJobs/completeJob/' + row['id'] + '"><i class="fa fa-fw fa-check"></i> Mark as Complete</a>';
				}
			}
			jobStatusFormatter = function(value, row){
				var f1 = row['filter1'];
				var f2 = row['filter2'];
				
				if(f1==1){
					return '<span class="label label-success">New</span>';
				} else if(f1==11 || f2==11){
					return '<span class="label label-warning">Awaiting Invoice</span>';
				}else if(f1==12 || f2==12){
					return '<span class="label label-info">Awaiting Quote</span>';
				}else if(f1==30 || f2==30){
					return '<span class="label" style="background: #553982;">Work Complete</span>';
				}else {
					return '<span class="label label-primary">In Progress</span>';
				}
			}
		</g:javascript>
</body>
</html>
