
<%@ page import="housemaster.House" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main_new" />
        <g:set var="entityName" value="${message(code: 'house.label', default: 'House')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="body">
            <h1 class="pageheading"><g:message code="default.show.label" args="[entityName]" /></h1>
                <div class="createNewLink">
             <span ><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody> 
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="house.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: houseInstance, field: "id")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${houseInstance?.id}" />
                    <span ><g:actionSubmit class="button" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                   <span style="position: relative; left: 105px; top: -40px;"><g:actionSubmit class="delete-button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
