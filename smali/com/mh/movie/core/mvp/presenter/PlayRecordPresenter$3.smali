.class Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter$3;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "PlayRecordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->a(Ljava/util/List;Ljava/util/List;Z)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Ljava/util/List;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter$3;->a:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter$3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter$3;->b:Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;->d(Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/am$b;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/PlayRecordPresenter$3;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/am$b;->b(Ljava/util/List;)V

    return-void
.end method
