<#import "parts/common.ftl" as common>
<@common.page>
    <div>
        <#if passports??>
            <a>Количество паспортов: ${collectionSize}</a>
        </#if>
    </div>
    <#list passports as passport>
    <div class="card mt-3">
        <div class="card-body">
            <h5 class="card-title"><p class="text-center">${passport.getFullName()} (${passport.shortName})</p></h5>
            <form class="col-md-12 mt-4">
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Марка, модель, у/о:</label><a class="col-md-6" >${passport.model}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Патент:</label><a class="col-md-6" >${passport.patent}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Стандарт:</label><a class="col-md-6" >${passport.standard}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Единица изменерия:</label><a class="col-md-6" >${passport.unit}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Масса, кг:</label><a class="col-md-6" >${passport.mass}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Приблизительная масса, кг:</label><a class="col-md-6" >${passport.approximateMass}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Признак перспективности:</label><a class="col-md-6" >${passport.perspective}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Назначение:</label><a class="col-md-6" >${passport.purpose}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">ОКП:</label><a class="col-md-6" >${passport.OKP}</a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Интеграция с САПР:</label>
                        <a class="col-md-6" ><#if passport.SAPRIntegration>Да<#else>Нет</#if></a>
                    </h6>
                </div>
                <div class="form-group">
                    <h6 class="card-subtitle text-muted">
                        <label class="col-md-4">Критическая позиция:</label>
                        <a class="col-md-6" ><#if passport.criticalPosition>Да<#else>Нет</#if></a>
                    </h6>
                </div>
            </form>
            <div class="text-left">
                <a href="/passportEdit/${passport.getId()}" class="card-link">Редактировать</a>
            </div>
        </div>
    </div>
    </#list>
</@common.page>