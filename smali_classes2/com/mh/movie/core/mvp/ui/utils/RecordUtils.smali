.class public Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;
.super Ljava/lang/Object;
.source "RecordUtils.java"


# static fields
.field public static final TOTAL_TIME:Ljava/lang/String; = "total_time"

.field public static final VIDEO_ID:Ljava/lang/String; = "video_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRecordInfo(Landroid/content/Context;Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/RecordInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/RecordInfo;",
            ">;",
            "Lcom/mh/movie/core/mvp/model/entity/RecordInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioId:Ljava/lang/String;

    iget-object v2, p2, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioInfoId:Ljava/lang/String;

    iget-object v2, p2, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioInfoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;

    iget-wide v1, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    iget-wide v3, p2, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    add-long v5, v1, v3

    iput-wide v5, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    const-string p2, "video_id"

    .line 51
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "video_id"

    .line 56
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static clearRecord(Landroid/content/Context;)V
    .locals 1

    const-string v0, "video_id"

    .line 120
    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearTotalTime(Landroid/content/Context;)V
    .locals 1

    const-string v0, "total_time"

    .line 124
    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getTotalTime(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    const-string v0, "total_time"

    .line 60
    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getVedioData(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/RecordInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "video_id"

    .line 37
    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils$1;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils$1;-><init>()V

    .line 40
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 39
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static saveData(Landroid/content/Context;Lcom/mh/movie/core/mvp/model/entity/RecordInfo;)V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->getVedioData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    .line 33
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->addRecordInfo(Landroid/content/Context;Ljava/util/List;Lcom/mh/movie/core/mvp/model/entity/RecordInfo;)V

    return-void
.end method

.method public static saveTime(Landroid/content/Context;J)V
    .locals 4

    .line 65
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->getTotalTime(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, p1

    const-string p1, "total_time"

    .line 66
    invoke-static {p0, p1, v2, v3}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
