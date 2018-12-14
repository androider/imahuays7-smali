.class Lcom/mh/movie/core/mvp/presenter/SettingPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->a(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/az$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/az$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;)V

    .line 66
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$1;->a(Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/model/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
