

<g:form action="search" >
    <input name="searchString" type="text"/>
    <span><g:submitButton name="create" class="button" value="${message(code: 'default.button.create.label', default: 'Create')}"  /></span>
</g:form>
<g:each in="${results}" status="i" var="houseInstance">
${houseInstance.name}
</g:each>
