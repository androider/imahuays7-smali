.class public Lcom/mh/movie/core/mvp/model/entity/RecordInfo;
.super Ljava/lang/Object;
.source "RecordInfo.java"


# instance fields
.field public classifyType:Ljava/lang/String;

.field public from:I

.field public secondarType:Ljava/lang/String;

.field public time:J

.field public type:I

.field public vedioId:Ljava/lang/String;

.field public vedioInfoId:Ljava/lang/String;

.field public videoPX:Ljava/lang/String;

.field public watchType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioInfoId:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    .line 24
    iput p5, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->type:I

    .line 25
    iput p6, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->from:I

    .line 26
    iput-object p7, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->videoPX:Ljava/lang/String;

    const-string p1, "watch"

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->watchType:Ljava/lang/String;

    const-string p1, "watchVideo"

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->secondarType:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->classifyType:Ljava/lang/String;

    return-void
.end method
