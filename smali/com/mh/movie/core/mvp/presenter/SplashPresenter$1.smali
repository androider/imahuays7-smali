.class Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;)V
    .locals 4

    .line 107
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 110
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserType()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUid()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;J)V

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUserInfo()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->bean2Json(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUid()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 120
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUrlMap()Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/OtherAppLinkUrlResponse;)V

    const/4 v0, 0x1

    .line 121
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Z)V

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getUid()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->getAdsList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;->isBootadSwitch()Z

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/mh/movie/core/mvp/a/ba$b;->a(JLjava/util/List;Z)V

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f()V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->b(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->g(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/ba$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/ba$b;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    .line 137
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 139
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SplashPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/ba$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/ba$b;->c()V

    return-void
.end method
