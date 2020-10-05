<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group">
        <label > Имя пользователя : </label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="username" placeholder="Введите имя пользователя"/>
        </div>
    </div>
    <div class="form-group">
        <label> Пароль: </label>
        <div class="col-sm-4">
            <input type="password" class="form-control" name="password" placeholder="Введите пароль"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <#if !isRegisterForm><a href ="/registration">Зарегистрироваться</a></#if>
<button type="submit" class="btn btn-primary"><#if isRegisterForm>Зарегистрироваться<#else>Войти</#if></button>
</form>
</#macro>

<#macro logout>
 <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit" class="btn btn-primary">Выйти</button>
  </form>
  </#macro>