<#import "parts/common.ftlh" as c>

<@c.page>
<form method="get" action="main" class="form-inline">
    <div class="form-inline">
        <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Найти по тэгу">
    </div>
    <button type="submit" class="btn btn-primary mb-2">Найти</button>
</form>

<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Добавить новое сообщение
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <textarea class="form-control" name="text" rows="3"
                          placeholder="Введите сообщение"></textarea>

            </div>
            <div class="form-group md-3">
                <input type="text" class="form-control" name="tag" placeholder="Тэг">
            </div>
            <!--<div class="form-group">
                <input type="hidden" class="form-control" name="file">
            </div>-->
            <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary mb-2">Добавить</button>
            </div>
        </form>
    </div>
</div>

<div class="card-columns">
    <#list messages as message>
    <div class="card my-3" style="width: 18rem;">
        <div class="m-2">
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            ${message.authorName}
        </div>
    </div>
    <#else>
    No message
</#list>
</div>
</@c.page>>