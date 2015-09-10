

<%@ page import="housemaster.House" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main_new" />
        <g:set var="entityName" value="${message(code: 'house.label', default: 'House')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        
        <div class="body">
            <h1 class="pageheading"><g:message code="default.create.label" args="[entityName]" /></h1>
            <div style="padding-bottom:10px;">

            <span><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${houseInstance}">
            <div class="errors">
                <g:renderErrors bean="${houseInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                       <label>Name</label> <input name="name" type="text"/>
                        </tbody>
                    </table>
                </div>
                <div>
                    <span><g:submitButton name="create" class="button" value="${message(code: 'default.button.create.label', default: 'Create')}"  /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
