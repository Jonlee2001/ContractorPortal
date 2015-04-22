<%@ page import="ContractorPortal.OpenJobs"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'openJobs.label', default: 'OpenJobs')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div class="row">
		<div class="col-xs-8">
			<h1 class="page-header">
				Job #${openJobsInstance.id } : <small> ${openJobsInstance.category }
					- ${openJobsInstance.subCategory }
				</small>
			</h1>
			<div class="form-group">
				<g:link action="index" class="btn btn-sm btn-primary">
					<i class="glyphicon glyphicon-chevron-left"></i> Back
				</g:link>
			</div>
			<sec:ifAnyGranted roles="ROLE_ADMIN">
				<div class="form-group">
					<g:link class="btn btn-default btn-sm" action="edit"
						resource="${openJobsInstance}">
						<g:message code="default.button.edit.label" default="Edit" />
					</g:link>
				</div>
				<div class="form-group">
					<button class="btn btn-sm btn-danger" id="deleteBtn">
						${message(code: 'default.button.delete.label', default: 'Delete')}
					</button>
				</div>
			</sec:ifAnyGranted>
		</div>
		<div class="col-xs-4 pull-right text-right" style="margin-top: 35px;">
			<h4 class="pull-right">Last Updated: <g:formatDate date="${openJobsInstance.lastUpdated}" format="dd/MM/yyyy HH:mm"/></h4><br />
			<h3>
				<g:if test="${openJobsInstance.filter1 == 50 }">
					<span class="label label-info text-center">New</span>
				</g:if>
				<g:elseif
					test="${openJobsInstance.filter1 >=11 && openJobsInstance.filter1 <= 12 }">
					<span class="label label-warning text-center">Awaiting Invoice / Quote</span>
				</g:elseif>
				<g:elseif test="${openJobsInstance.filter1 == 13 }">
					<span class="label label-warning text-center">Awaiting Info
						from Contractor</span>
				</g:elseif>
				<g:elseif
					test="${openJobsInstance.filter1 > 30 && openJobsInstance.filter1 < 33 }">
					<span class="label label-danger text-center">Awaiting
						Payment</span>
				</g:elseif>
				<g:else>
					<span class="label label-primary text-center">In Progress</span>
				</g:else>
			</h3>
		</div>
	</div>


	<div class="row">
		<div class="col-xs-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Job Details</h3>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<label class="control-label">Fault Details:</label>
						<p class="form-control-static">
							${openJobsInstance?.faultDetails}
						</p>
					</div>
					<div class="form-group">
						<label class="control-label">Fault Location:</label>
						<p class="form-control-static">
							${PMMS.Tbljobs.get(openJobsInstance.id)?.address}
						</p>
					</div>
					<div class="form-group col-xs-3 text-center">
						<label class="control-label">Date reported to PMMS:</label>
						<p class="form-control-static">
							<g:formatDate date="${openJobsInstance?.dateReceived}" format="dd/MM/yyyy" />
						</p>
					</div>
					<div class="form-group col-xs-3 text-center">
						<label class="control-label">Date job issued:</label>
						<p class="form-control-static">
							<g:formatDate date="${openJobsInstance?.dateInformed}"format="dd/MM/yyyy" />
						</p>
					</div>
					<div class="form-group col-xs-3 text-center">
						<label class="control-label">Work Priority:</label>
						<p class="form-control-static " style="font-size: 1.2em;">
							<g:if test="${openJobsInstance.priority == 1 }">
								<i class="glyphicon glyphicon-flag text-danger" title="1 Day"></i> Today
							</g:if>
							<g:if test="${openJobsInstance.priority == 7 }">
								<i class="glyphicon glyphicon-flag text-success" title="7 Days"></i> 7 Days
							</g:if>
							<g:if test="${openJobsInstance.priority == 14 }">
								<i class="glyphicon glyphicon-flag text-info" title="14 Days"></i> 14 Days
							</g:if>
							<g:if test="${openJobsInstance.priority == 30 }">
								<i class="glyphicon glyphicon-flag text-warning" title="30 Days"></i> 30 days
							</g:if>
						</p>
					</div>
				</div> <!-- end of panel-body -->
			</div> <!-- end of panel -->
		</div> <!-- end of col-xs-6 -->
		<div class="col-xs-6">
			<div class="panel panel-default">
				<div class="panel-heading"><h3 class="panel-title">Comments</h3></div>
			
			
			<div class="panel-body">
				<span style="white-space: pre-line;">${PMMS.Tbljobs.get(openJobsInstance.id).comments }</span>
			</div>
			</div>
		</div>
	</div><!--  end of row -->
	<div class="row">
		<div class="col-xs-12">
			<h3>
				Files
				<button class="btn btn-xs btn-success" data-toggle="modal" data-target="#uploadModal">
					<i class="glyphicon glyphicon-plus"></i> Add
				</button>
			</h3>
			<table class="table">
				<thead>
					<tr>
						<th style="width: 100px;"/>
						<th class="col-xs-3">Filename</th>
						<th class="col-xs-7">Comments</th>
						<th class="col-xs-2">Date</th>
					</tr>
				</thead>
				<g:if
					test="${PMMS.Jobfiles.findAllByIdno(openJobsInstance.id).size() > 0 }">
					<g:each in="${PMMS.Jobfiles.findAllByIdno(openJobsInstance.id) }">
						<tr>
							<td><a href="file://${it.filename }" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-download"></i> Download</a></td>
							<td>
								${it}
							</td>
							<td>
								${it.comments }
							</td>
							<td>
								${it.datePublished}
							</td>
						</tr>
					</g:each>
				</g:if>
				<g:else>
					<tr>
						<td colspan="3"><h4 class="text-muted">No Files to
								Display</h4></td>
					</tr>
				</g:else>
			</table>
		</div>
	</div>
	<g:form url="[resource:openJobsInstance, action:'delete']"
		method="DELETE" name="deleteForm">
	</g:form>
	<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Add File</h4>
				</div>
				<div class="modal-body">
					<g:form class="form-horizontal" action="addFiles" name="uploadForm" enctype="multipart/form-data">
						<div class="form-group">
							<label class="control-label col-xs-3">File(s)</label>
							<div class="input-group col-xs-9">
								<input type="file" class="form-control" name="files" id="files" multiple/>
							</div>
							<input type="hidden" name="jobId" id="jobId" value="${openJobsInstance.id }"/>
						</div>
					</g:form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-default" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Close</button>
					<button type="button" class="btn btn-sm btn-primary" id="uploadFiles"><i class="glyphicon glyphicon-upload"></i> Upload</button>
				</div>
			</div>
		</div>
	</div>
	<g:javascript>
		$('#deleteBtn').click(function(){
			$('#deleteForm').submit();
		});
		$('#uploadFiles').click(function(){
				$('#uploadForm').submit();			
			});
	</g:javascript>
</body>
</html>