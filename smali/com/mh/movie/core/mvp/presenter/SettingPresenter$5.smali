.class Lcom/mh/movie/core/mvp/presenter/SettingPresenter$5;
.super Lcom/mh/movie/core/mvp/model/a/b;
.source "SettingPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/SettingPresenter;->e()V
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
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/SettingPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$5;->a:Lcom/mh/movie/core/mvp/presenter/SettingPresenter;

    invoke-direct {p0, p2, p3}, Lcom/mh/movie/core/mvp/model/a/b;-><init>(Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SettingPresenter$5;->a(Ljava/util/List;)V

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

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->getPlayRecordStore()Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->setPlayRecordList(Ljava/util/List;)V

    return-void
.end method
