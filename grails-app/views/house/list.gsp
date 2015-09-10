
<%@ page import="housemaster.House" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main_new" />
        <g:set var="entityName" value="${message(code: 'house.label', default: 'House')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
       
        <div class="body">
          <h1 class="pageheading"><g:message code="default.list.label" args="[entityName]" /></h1>
             <div class="createNewLink">
             <span ><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'house.id.label', default: 'Id')}" />
                        
                        </tr>
                         <tr>
                        
                            <g:sortableColumn property="name" title="name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${houseInstanceList}" status="i" var="houseInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${houseInstance.id}">${fieldValue(bean: houseInstance, field: "id")}</g:link></td>
                          <td><g:link action="show" id="${houseInstance.id}">${fieldValue(bean: houseInstance, field: "name")}</g:link></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
             <div class="subtable">
            <div class="paginateButtons">
                <g:paginate total="${houseInstanceTotal}" />
            </div></div>
        </div>
    </body>
</html>
