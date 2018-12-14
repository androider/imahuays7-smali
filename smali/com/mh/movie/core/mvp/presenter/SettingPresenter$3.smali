.class Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->b(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/az$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/az$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$3;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    return-void
.end method
