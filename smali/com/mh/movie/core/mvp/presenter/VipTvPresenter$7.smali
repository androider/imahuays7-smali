.class Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "VipTvPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->d(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    iput p4, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;->a:I

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;->b:Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;->f(Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/bj$b;

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/VipTvPresenter$7;->a:I

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/bj$b;->a(I)V

    return-void
.end method
