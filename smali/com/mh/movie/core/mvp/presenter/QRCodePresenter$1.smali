.class Lcom/mh/movie/core/mvp/presenter/QRCodePresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "QRCodePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;->a(Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/an$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/an$b;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter$1;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;->b(Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/an$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/an$b;->b(Ljava/lang/String;)V

    return-void
.end method
