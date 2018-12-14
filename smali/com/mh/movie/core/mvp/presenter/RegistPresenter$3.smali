.class Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "RegistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6ce8\u518c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->bean2Json(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->d(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/as$b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/as$b;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$3;->a(Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
