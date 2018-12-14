.class Lcom/mh/movie/core/mvp/presenter/RegistPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "RegistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/RegistPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter;->e(Lcom/mh/movie/core/mvp/presenter/RegistPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/as$b;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/as$b;->a(Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/RegistPresenter$5;->a(Ljava/lang/Boolean;)V

    return-void
.end method
