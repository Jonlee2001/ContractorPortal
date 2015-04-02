
<%@ page import="ContractorPortal.OpenJobs"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'openJobs.label', default: 'OpenJobs')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>

</head>
<body>
	<div class="col-xs-12 hidden-xs">
		<h1 class="page-header">Open Jobs - <small>${contractorName}</small></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table class="table table-striped table-bordered table-condensed">
			<thead>
				<tr>
					<th></th>
					<g:sortableColumn property="id"
						title="${message(code: 'openJobs.id.label', default: 'Job ID')}"
						class="text-center" style="width: 65px;" />
					
					<th class="col-xs-3">Address</th>
					<g:sortableColumn property="category"
						title="${message(code: 'openJobs.category.label', default: 'Category')}"
						 />
					<g:sortableColumn property="subCategory"
						title="${message(code: 'openJobs.subCategory.label', default: 'Sub-Category')}"
						 />
					<g:sortableColumn property="dateInformed"
						title="${message(code: 'openJobs.dateInformed.label', default: 'Date Job Issued')}" class="text-center" style="width: 100px;"/>
					<g:sortableColumn property="priority" title="Priority" class="text-center" style="width: 25px;"/>
					<sec:ifAnyGranted roles="ROLE_ADMIN">
						<g:sortableColumn property="contractor"
							title="${message(code: 'openJobs.contractor.label', default: 'Contractor')}"
							class="col-xs-2" />
					</sec:ifAnyGranted>
					<g:sortableColumn property="filter1"
						title="${message(code: 'openJobs.filter1.label', default: 'Status')}" class="text-center" style="width: 175px;"/>
					<th>Action</th>

				</tr>
			</thead>
			<tbody>
				<g:each in="${openJobsInstanceList}" status="i"	var="openJobsInstance">
					<tr>
						<td style="width: 25px;">
							<g:if test="${openJobsInstance.cViewed}"><i class="glyphicon glyphicon-warning-sign text-warning"></i></g:if>
						</td>
						<td class="text-center">
							<g:link action="show" id="${openJobsInstance?.id}">${openJobsInstance?.id}</g:link>
						</td>
						<td>
							${openJobsInstance.address }
						</td>
						<td>
							${fieldValue(bean: openJobsInstance, field: "category")}
						</td>
						<td>
							${fieldValue(bean: openJobsInstance, field: "subCategory")}
						</td>
						<td class="text-center">
							<g:formatDate date="${openJobsInstance.dateInformed}" format="dd/MM/yyyy" />
						</td>
						<td class="text-center" style="font-size: 1.2em;">
							<g:if test="${openJobsInstance.priority == 1 }">
								<i class="glyphicon glyphicon-flag text-danger" title="1 Day"></i>
							</g:if>
							<g:if test="${openJobsInstance.priority == 7 }">
								<i class="glyphicon glyphicon-flag text-success" title="7 Days"></i>
							</g:if>
							<g:if test="${openJobsInstance.priority == 14 }">
								<i class="glyphicon glyphicon-flag text-warning" title="14 Days"></i>
							</g:if>
							<g:if test="${openJobsInstance.priority == 30 }">
								<i class="glyphicon glyphicon-flag text-info" title="30 Days"></i>
							</g:if>
						</td>
						<sec:ifAnyGranted roles="ROLE_ADMIN">
							<td>
								${openJobsInstance.contractor }
							</td>
						</sec:ifAnyGranted>
						<g:if test="${openJobsInstance?.filter2 == 1 }">
							<td class="text-center">
								<span class="label label-lg label-info"	style="font-size: 0.8em;">New</span>
							</td>
							<td>
								<g:link class="btn btn-xs btn-success" action="acceptJob" id="${openJobsInstance.id }"><i class="glyphicon glyphicon-ok"></i> Accept</g:link>
								<g:link class="btn btn-xs btn-danger" action="rejectJob" id="${openJobsInstance.id }"><i class="glyphicon glyphicon-remove"></i> Reject</g:link>
							</td>
						</g:if>
						<g:elseif test="${openJobsInstance.filter1 == 11 }">
							<td class="text-center">
								<span class="label label-lg label-warning" style="font-size: 0.8em;">Awaiting Invoice</span>
							</td>
							<td>
								<button class="btn btn-xs btn-default addInvoice" data-jobid="${openJobsInstance.id }" data-toggle="modal" data-target="#invoiceModal" title="Add Invoice" data-toggle="tooltip">
									<i class="glyphicon glyphicon-plus" style="font-size: 1.2em;"></i> 
									<i class="glyphicon glyphicon-file" style="font-size: 1.2em;"></i>
								</button>
							</td>
						</g:elseif> 
						<g:elseif test="${openJobsInstance.filter1 == 12 }">
							<td class="text-center">
								<span class="label label-lg label-info"	style="font-size: 0.8em;">Awaiting Quote</span>
							</td>
							<td>
								<button class="btn btn-xs btn-default addQuote"	data-jobid="${openJobsInstance.id }" data-toggle="modal" data-target="#quoteModal" title="Add Quote" data-toggle="tooltip">
									<i class="glyphicon glyphicon-plus" style="font-size: 1.2em;"></i> 
									<i class="glyphicon glyphicon-list-alt" style="font-size: 1.2em;"></i>
								</button>
							</td>
						</g:elseif>
						<g:elseif test="${openJobsInstance.filter1 > 30 && openJobsInstance.filter1 < 33 }">
							<td class="text-center">
								<span class="label label-lg label-danger text-center" style="font-size: 0.8em;">Awaiting Payment</span>
							</td>
							<td></td>	
						</g:elseif>
						<g:else>
						<td class="text-center">
							<h3 class="label label-primary" style="font-size: 0.8em;">In Progress</h3></td><td></td>
						</g:else>
					</tr>
				</g:each>
			</tbody>
		</table>

		
		<div class="row">
			<div class="col-xs-11">
				<ul class="pagination">
			<g:paginate total="${openJobsInstanceCount ?: 0}" />
		</ul>
			</div>
			<div class="col-xs-1 pull-right">
				<g:link class="btn btn-sm btn-success" action="exportJobs"><i class="glyphicon glyphicon-export"></i> Export to Excel</g:link>
			</div>
		</div>
	</div>
	<div class="col-xs-12 visible-xs">
		<ul class="list-group">
			<g:each in="${openJobsInstanceList }" var="job">
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
							${job.priority}
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
									class="glyphicon glyphicon-gbp"></i></span> <input type="text"
									class="form-control" name="amount" id="invoiceAmount" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-xs-3">Invoice No.</label>
							<div class="input-group col-xs-6">
								<span class="input-group-addon">&nbsp;</span> <input type="text"
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
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-sm btn-primary" id="saveInvoice">Save</button>
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
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-sm btn-primary" id="saveQuote">Save</button>
				</div>
			</div>
		</div>
	</div>
	<g:javascript>
			$(document).ready(function(){
				$('.pagination a').wrap("<li></li>");
				$('.pagination span').wrap("<li class='active'></li>");
			});
			
			$('.addInvoice').click(function(){
				$('#iJobId').attr('value',$(this).data('jobid'));
			});
			$('.addQuote').click(function(){
				$('#qJobId').attr('value',$(this).data('jobid'));
			});
			$('#saveInvoice').click(function(){
				$('#invoiceForm').submit();			
			});
			$('#saveQuote').click(function(){
				$('#quoteForm').submit();			
			});
		</g:javascript>
</body>
</html>
