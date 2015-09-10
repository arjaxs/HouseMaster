

<%@ page import="housemaster.House" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main_new" />
        <g:set var="entityName" value="${message(code: 'house.label', default: 'House')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="body">
            <h1 class="pageheading"><g:message code="default.edit.label" args="[entityName]" /></h1>
                <div class="createNewLink">
             <span ><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${houseInstance}">
            <div class="errors">
                <g:renderErrors bean="${houseInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${houseInstance?.id}" />
                <g:hiddenField name="version" value="${houseInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                        </tbody>
                    </table>
                </div>
                <div>
                    <span><g:actionSubmit class="button" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                 <span style="position: relative; left: 105px; top: -40px;"><g:actionSubmit class="delete-button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
