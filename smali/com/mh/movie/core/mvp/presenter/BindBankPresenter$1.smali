.class Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$1;
.super Ljava/lang/Object;
.source "BindBankPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 68
    :try_start_0
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    const-class v1, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;

    .line 69
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/f$b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->getBank()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/f$b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
