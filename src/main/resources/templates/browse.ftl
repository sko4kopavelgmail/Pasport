<#import "parts/common.ftl" as common>
<@common.page>
    <div class="card text-center">
    <#list passports as passport>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">${passport.getFullName()}</h5>
                <h6 class="card-subtitle mb-2 text-muted">${passport.getFullName()}</h6>
                

                <div class="text-left">
                    <a  href="/passportEdit/${passport.getId()}" class="card-link">Редактировать</a>
                </div>
            </div>
        </div>
    </#list>
    </div>
</@common.page>