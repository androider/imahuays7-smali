.class public Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;
.super Ljava/lang/Object;
.source "PlayHistoryRequest.java"


# instance fields
.field private packageId:I

.field private playTime:I

.field private score:I

.field private terminal:I

.field private videoId:J

.field private videoInfoId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->packageId:I

    return v0
.end method

.method public getPlayTime()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->playTime:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->score:I

    return v0
.end method

.method public getTerminal()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->terminal:I

    return v0
.end method

.method public getVideoId()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->videoId:J

    return-wide v0
.end method

.method public getVideoInfoId()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->videoInfoId:J

    return-wide v0
.end method

.method public setPackageId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->packageId:I

    return-void
.end method

.method public setPlayTime(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->playTime:I

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->score:I

    return-void
.end method

.method public setTerminal(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->terminal:I

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->videoId:J

    return-void
.end method

.method public setVideoInfoId(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PlayHistoryRequest;->videoInfoId:J

    return-void
.end method
