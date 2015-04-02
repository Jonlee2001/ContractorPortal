
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
	<div class="col-xs-12 hidden-xs" style="padding-bottom: 50px;">
		<h1 class="page-header">Open Jobs - <small>${contractorName}</small></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table class="table table-bordered" data-page-list="[5, 10, 20, 50, 100, 200]" data-show-export="true" data-pagination="true" data-toggle="table" data-url="${request.contextPath }/openJobs/index.json">
			<thead>
					<tr>
						<th class="text-center" data-field="id" data-formatter="jobShowFormatter" data-width="75"></th>
						<th class="text-center" data-width="100" data-sortable="true" data-field="id">Job ID</th>
						<th class="text-center" data-field="address" data-sortable="true">Address</th>
						<th class="text-center" data-width="250" data-sortable="true" data-field="category">Category</th>
						<th class="text-center" data-width="250" data-sortable="true" data-field="subCategory">Sub-Category</th>						
						<th class="text-center" data-width="125" data-sortable="true" data-field="dateInformed" data-formatter="dateFormatter">Date Job Issued</th>
						<th class="text-center" data-field="priority" data-sortable="true" data-formatter="priorityFormatter">Priority</th>
						<th class="text-center" data-field="filter1" data-sortable="true">Filter 1</th>
						<th class="text-center" data-field="filter2" data-sortable="true">Filter 2</th>
					</tr>
				</thead>
			</table>
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