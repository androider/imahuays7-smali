.class Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$7;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "QuickLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/model/a/b<",
        "Ljava/util/List<",
        "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$7;->a:Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/user/QuickLoginPresenter$7;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "update history:"

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->getPlayRecordStore()Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->setPlayRecordList(Ljava/util/List;)V

    return-void
.end method
