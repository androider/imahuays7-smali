.class Lcom/mh/movie/core/mvp/presenter/EditNamePresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "EditNamePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/EditNamePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/EditNamePresenter$1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/EditNamePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;->a(Lcom/mh/movie/core/mvp/presenter/EditNamePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/m$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/m$b;->c()V

    return-void
.end method
