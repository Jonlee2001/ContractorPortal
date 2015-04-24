function issueShowFormatter(value){
	var link = window.location.origin + '/PMMS/issue/show/'+value
	return '<a href="'+link+'" class="btn btn-xs btn-primary"><i class="fa fa-fw fa-eye"></i>View</a>'
}
function jobShowFormatter(value){
	var link = window.location.origin + '/ContractorPortal/openJobs/show/'+value
	return '<a href="'+link+'" class="btn btn-xs btn-primary"><i class="fa fa-fw fa-eye"></i>View</a>'
}
function jobLinkFormatter(value){
	if(value != ''){
	return '<a href="'+window.location.origin+'/PMMS/job/show/' + value + '" class="btn btn-xs btn-default">' + value +' <i class="fa fa-fw fa-external-link"></i></a>'
	}else{
		return ''
	}
}
function statusFormatter(value){
	var statusClass = value.toLowerCase().replace(" ","-")
	return '<span class="label status-'+ statusClass +'">' + value + '</span>'
}
function longTextFormatter(value){
	if (value.length > 60)
	return value.substr(0,60)+'...';
	else
		return value;
}
function dateFormatter(value){
	if (value != null){
	var date = new Date(value);
	return date.getDate()+'/'+(date.getMonth()+1)+'/'+date.getFullYear();
	}else{
		return " ";
	}
}
function priorityFormatter(value){
	//var priorityClass = value.toLowerCase()
	if (value == "1"){
		return '<i class="fa fa-lg fa-fw fa-warning text-danger"></i>'
	}else if(value == "7"){
		return '<i class="fa fa-lg fa-fw fa-flag text-success"></i>'
	}else if(value == "14"){
		return '<i class="fa fa-lg fa-fw fa-flag text-warning"></i>'
	}else if(value == "30"){
		return '<i class="fa fa-lg fa-fw fa-flag text-info"></i>'
	}
}
function ageFormatter(value){
	var age = new Date(new Date().getTime() - new Date(value).getTime());
	if(age.getMonth() > 0){
		return age.getMonth() + ' months ' + age.getDate() + ' days'
	}
	else if(age.getDate() > 1){
		return age.getDate() + ' days ' + age.getUTCHours() + ' h'
	}else if(age.getUTCHours() > 0 && age.getUTCHours() <= 23){
		return age.getUTCHours() + ' h ' + age.getUTCMinutes() + ' mins'
	}
	else if(age.getUTCMinutes() > 0 && age.getUTCMinutes() <= 60){
		return age.getUTCMinutes() + ' mins'
	}else if (age.getSeconds() <= 60){
		return age.getSeconds() + ' secs'
	}else{
		return age.getUTCHours()+':'+age.getUTCMinutes()+':'+age.getSeconds();
	}
}
function ageFormatterAgo(value){
	var age = new Date(new Date().getTime() - new Date(value).getTime());
	var output = ''
	if(age.getDate() > 1){
		output = age.getDate() + ' days ' + age.getUTCHours() + ' h'
	}else if(age.getUTCHours() > 0 && age.getUTCHours() <= 23){
		output = age.getUTCHours() + ' h ' + age.getUTCMinutes() + ' mins'
	}
	else if(age.getUTCMinutes() > 0 && age.getUTCMinutes() <= 60){
		output = age.getUTCMinutes() + ' mins'
	}else if (age.getSeconds() <= 60){
		output = age.getSeconds() + ' secs'
	}else{
		output = age.getUTCHours()+':'+age.getUTCMinutes()+':'+age.getSeconds();
	}
	return output += ' ago'
}

function queryParams(params){
	
	var arr = $("#filtersForm").serializeArray()
	var q = 
	 {
		 "max": params.limit,
         "offset": params.offset,
         "order": params.order,
         "sort": params.sort
         //"filter": JSON.stringify($("#filtersForm").serializeArray())
	};
	 arr.forEach(function(entry){
    	 q["f."+entry.name] = entry.value
     });
	 return q;
}

function jobRowStyle(row, index){
	var age = new Date(new Date().getTime() - new Date(row['dateCreated']).getTime());
	if (age.getMonth() > 0){
        return {
            classes: 'danger-row'
        };
    }else if (age.getDate() > 14){
    	return {
    		classes: 'warning-row'
    	};
    }
    return {};
}
function issueRowStyle(row, index){
	var age = new Date(new Date().getTime() - new Date(row['dateCreated']).getTime());
	if (age.getMonth() > 0){
        return {
            classes: 'danger-row'
        };
    }else if (age.getDate() > 14){
    	return {
    		classes: 'warning-row'
    	};
    }
    return {};
}

$("#filtersForm").submit(function(event){
	$("#listTable").bootstrapTable('refresh');
	event.preventDefault();
});
$("#refresh").on('click',function(event){
	$("#listTable").bootstrapTable('refresh');
	event.preventDefault();
});
$("#clearFilters").on('click',function(event){
	$("#filtersForm").find("input, select").val("")
	$("#listTable").bootstrapTable('refresh');
	event.preventDefault();
})
$(".filterPaneBtn").on('click',function(){
	$(".upIcon").toggleClass("hidden");
	$(".downIcon").toggleClass("hidden");
})