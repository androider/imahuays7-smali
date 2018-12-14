.class Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipTvPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->c(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;->b:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;->b:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->e(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/bj$b;

    iget v1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;->a:I

    invoke-interface {v0, v1, p1}, Lcom/mh/movie/core/mvp/a/bj$b;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$5;->a(Ljava/lang/Integer;)V

    return-void
.end method
