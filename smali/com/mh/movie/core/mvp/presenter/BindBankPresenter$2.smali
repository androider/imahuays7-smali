.class Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$2;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "BindBankPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/BindBankRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter$2;->a:Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;->b(Lcom/mh/movie/core/mvp/presenter/BindBankPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/f$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/f$b;->c()V

    return-void
.end method
