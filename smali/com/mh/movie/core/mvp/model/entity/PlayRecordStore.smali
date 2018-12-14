.class public Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;
.super Ljava/lang/Object;
.source "PlayRecordStore.java"


# static fields
.field private static playRecordStore:Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;


# instance fields
.field public playRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordList:Ljava/util/List;

    return-void
.end method

.method public static getPlayRecordStore()Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;
    .locals 1

    .line 14
    sget-object v0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordStore:Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordStore:Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    .line 17
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordStore:Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;

    return-object v0
.end method


# virtual methods
.method public deletePlayRecordList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 35
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, ""

    const-string v1, "updatePlayRecord"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getPlayRecordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordList:Ljava/util/List;

    return-object v0
.end method

.method public setPlayRecordList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/PlayRecordStore;->playRecordList:Ljava/util/List;

    .line 29
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    const-string v0, ""

    const-string v1, "updatePlayRecord"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
