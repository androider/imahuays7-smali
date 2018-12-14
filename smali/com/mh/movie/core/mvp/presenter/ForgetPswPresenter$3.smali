.class Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "ForgetPswPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/AccountCommonRequest;Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->d(Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/s$b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mh/movie/core/mvp/a/s$b;->a(J)V

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter$3;->a(Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;)V

    return-void
.end method
