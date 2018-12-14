.class Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "CollectionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->a(Ljava/util/List;Z)V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter$3;->a:Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;->d(Lcom/mh/movie/core/mvp/presenter/CollectionPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/h$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/a/h$b;->c()V

    return-void
.end method
