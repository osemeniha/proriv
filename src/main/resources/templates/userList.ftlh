<#import "parts/common.ftlh" as c>

<@c.page>
<div>
    <h5>Список пользователей</h5>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Имя пользователя</th>
            <th scope="col">Роль</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.id}">редактировать</a></td>
        </tr>
        </#list>
        </tbody>
    </table>
</@c.page>