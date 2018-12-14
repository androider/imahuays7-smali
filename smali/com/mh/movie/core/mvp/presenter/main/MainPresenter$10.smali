.class Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$10;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$10;->a:Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$10;->a:Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->b(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/a/a$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/a/a$b;->a(Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$10;->a(Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V

    return-void
.end method
