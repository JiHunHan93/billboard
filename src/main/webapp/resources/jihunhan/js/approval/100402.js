define(function(require){var e=require("jquery"),t=require("app"),n=require("backbone"),r=require("approval/daouform/vacation/views/main"),i=require("json!approval/daouform/vacation/config/vacation.custom.config.json"),s={startDateEl:"#startDate",endDateEl:"#endDate",vacationTypeAreaEl:"#vacationTypeArea",vacationHalfAreaEl:"#vacationHalfArea",applyPointAreaEl:"#applyPointArea",restPointAreaEl:"#restPointArea",usingPointAreaEl:"#usingPointArea",descriptionEl:"#description"},o=n.View.extend({initialize:function(e){this.options=e||{},this.docModel=this.options.docModel,this.variables=this.options.variables,this.infoData=this.options.infoData,this.docStatus=GO.util.store.get("document.docStatus"),this.docMode=GO.util.store.get("document.docMode")},render:function(){e.extend(s,i),this.vacation=new r(_.extend(s,this.options)),_.isEqual(this.docStatus,"TEMPSAVE")?this.vacation.renderEditDocument():this.vacation.render()},renderViewMode:function(){},onEditDocument:function(){e.extend(s,i),this.vacation=new r(_.extend(s,this.options)),this.vacation.renderEditDocument()},beforeSave:function(){},afterSave:function(){},validate:function(){return this.vacation?this.vacation.validate().descriptionLength():!0},getDocVariables:function(){return this.vacation?this.vacation.getVariablesData():this.variables}});return o});