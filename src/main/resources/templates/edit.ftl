<#import "parts/common.ftl" as common>
<@common.page>
    <form action="/passportEdit/${passport.id}" method="post" class="col-md-12">
        <div class="form-group">
            <label class="col-md-4" for="fullName">Наименование продукции:</label>
            <input class="col-md-6" id="fullName"
                   name="fullName"
                   value="${passport.fullName}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="shortName">Кратное наименование продукции:</label>
            <input class="col-md-6"
                   name="shortName"
                   id="shortName"
                   value="${passport.shortName}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="model">Марка, модель, у/о:</label>
            <input class="col-md-6" name="model"
                   id="model"
                   value="${passport.model}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="patent">Патент:</label>
            <input class="col-md-6" name="patent" id="patent"
                   value="${passport.patent}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="standard">Стандарт:</label>
            <input class="col-md-6" name="standard"
                   id="standard" value="${passport.standard}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="unit">Единица изменерия:</label>
            <input class="col-md-6" name="unit" id="unit"
                   value="${passport.unit}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="mass">Масса, кг:</label>
            <input class="col-md-6" name="mass" id="mass"
                   value="${passport.mass}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="approximateMass">Приблизительная масса, кг:</label>
            <input class="col-md-6"
                   name="approximateMass"
                   id="approximateMass"
                   value="${passport.approximateMass}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="perspective">Признак перспективности:</label>
            <input class="col-md-6"
                   name="perspective"
                   id="perspective"
                   value="${passport.perspective}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="purpose">Назначение:</label>
            <input class="col-md-6" name="purpose"
                   id="purpose" value="${passport.purpose}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="OKP">ОКП:</label>
            <input class="col-md-6" name="OKP" id="OKP"
                   value="${passport.OKP}">
        </div>
        <div class="form-group">
            <label class="col-md-4" for="SAPRIntegration">Интеграция с САПР:</label>
            <select class="custom-select col-md-6" name="SAPRIntegration" id="SAPRIntegration">
                <option <#if passport.SAPRIntegration>selected</#if> value="Да">Да</option>
                <option <#if !passport.SAPRIntegration>selected</#if> value="Нет">Нет</option>
            </select>
        </div>
        <div class="form-group">
            <label class="col-md-4" for="criticalPosition">Критическая позиция:</label>
            <select class="custom-select col-md-6" name="criticalPosition" id="criticalPosition">
                <option <#if passport.criticalPosition>selected</#if> value="Да">Да</option>
                <option <#if !passport.criticalPosition>selected</#if> value="Нет">Нет</option>
            </select>
        </div>
        <div class="form-group">
            <input class="btn btn-primary" type="submit" value="Сохранить">
        </div>
    </form>
</@common.page>