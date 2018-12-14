.class public Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;
.super Lmaster/flame/danmaku/danmaku/a/a;
.source "MHDanmukuParser.java"


# instance fields
.field public data:Ljava/lang/String;

.field public normalColor:I

.field queryBarrages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/a/a;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/a/a;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->queryBarrages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createDanmakus(Ljava/util/List;)Lmaster/flame/danmaku/danmaku/model/android/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/e;"
        }
    .end annotation

    .line 82
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    if-eqz p1, :cond_3

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;

    .line 89
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v3

    .line 90
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->getNodeTime()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lmaster/flame/danmaku/danmaku/model/d;->d(J)V

    .line 91
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/QueryBarrageResponse;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 92
    iget v4, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->mDispDensity:F

    const v5, 0x3f19999a    # 0.6f

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->k:F

    .line 93
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->normalColor:I

    .line 94
    iput v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    const/high16 v4, -0x1000000

    if-gt v2, v4, :cond_1

    const/4 v4, -0x1

    .line 95
    :cond_1
    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->i:I

    .line 97
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/f;

    invoke-virtual {v3, v2}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 98
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iput-object v2, v3, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    add-int/lit8 v2, v1, 0x1

    .line 99
    iput v1, v3, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    .line 100
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->f()Ljava/lang/Object;

    move-result-object v1

    .line 101
    monitor-enter v1

    .line 102
    :try_start_0
    invoke-virtual {v0, v3}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 103
    monitor-exit v1

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected parse()Lmaster/flame/danmaku/danmaku/model/l;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->queryBarrages:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->createDanmakus(Ljava/util/List;)Lmaster/flame/danmaku/danmaku/model/android/e;

    move-result-object v0

    return-object v0
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/utils/MHDanmukuParser;->normalColor:I

    return-void
.end method
