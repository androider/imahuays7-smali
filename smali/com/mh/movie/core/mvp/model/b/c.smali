.class public Lcom/mh/movie/core/mvp/model/b/c;
.super Lcom/mh/movie/core/mvp/model/b/a;
.source "LoginDao.java"


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/model/b/a;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    return-void
.end method


# virtual methods
.method public a(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/a/a;->a(J)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account"

    .line 44
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    .line 45
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "captcha"

    .line 46
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCaptcha()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    .line 47
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->f(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 33
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account"

    .line 34
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    .line 35
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->e(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/model/a/a;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->K:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v2, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v1, v2}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->f(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    .line 55
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account"

    .line 56
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    .line 57
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "captcha"

    .line 58
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCaptcha()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    .line 59
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    .line 60
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 61
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->d(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/model/a/a;->c(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public c()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/a/a;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/model/a/a;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account"

    .line 69
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    .line 70
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "captcha"

    .line 71
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCaptcha()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    .line 72
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->g(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "password"

    .line 133
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account"

    .line 134
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->b(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    .line 142
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    .line 143
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "country"

    .line 144
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "captcha"

    .line 145
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getCaptcha()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    .line 146
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;->getModel()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uuid"

    .line 147
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/b/c;->a:Lcom/jess/arms/integration/IRepositoryManager;

    const-class v1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v1}, Lcom/jess/arms/integration/IRepositoryManager;->obtainRetrofitService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/a/a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/model/a/a;->c(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
