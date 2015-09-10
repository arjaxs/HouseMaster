<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main_new" />
    <g:set var="entityName" value="${message(code: 'house.label', default: 'House')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

<div class="body">
    <g:form action="search" >
        <input name="searchString" type="text"/>
        <span><g:submitButton name="create" class="button" value="${message(code: 'default.button.create.label', default: 'Create')}"  /></span>
    </g:form>
    <g:each in="${houseInstanceList}" status="i" var="houseInstance">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

            <td><g:link action="show" id="${houseInstance.id}">${fieldValue(bean: houseInstance, field: "id")}</g:link></td>
            <td><g:link action="show" id="${houseInstance.id}">${fieldValue(bean: houseInstance, field: "name")}</g:link></td>

        </tr>
    </g:each>

</div>
</body>
</html>