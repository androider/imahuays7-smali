.class Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "ExchangeRecordPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/RecordResponse;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->j:I

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;->a(Lcom/mh/movie/core/mvp/presenter/ExchangeRecordPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/o$b;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/o$b;->a(Ljava/util/List;)V

    return-void
.end method
