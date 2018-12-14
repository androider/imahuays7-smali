.class public Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;
.super Ljava/lang/Object;
.source "HistoryAndCollectResponse.java"


# static fields
.field public static final COLLECTION_VIEW:I = 0x2

.field public static final PLAY_RECORD_VIEW:I = 0x1


# instance fields
.field private addTime:I

.field private duration:I

.field private episodeState:I

.field private episodeTotalCount:I

.field private episodeUploadCount:I

.field private id:J

.field private lastPeriod:Ljava/lang/String;

.field private period:Ljava/lang/String;

.field private playTime:I

.field private score:I

.field private sortNum:I

.field private title:Ljava/lang/String;

.field private type:I

.field private videoDuration:I

.field private videoId:J

.field private videoInfoId:J

.field private videoPreviewUrl:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTime()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->addTime:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->duration:I

    return v0
.end method

.method public getDurationStr(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 155
    iget p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoDuration:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 157
    iget p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->duration:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-le p1, v0, :cond_7

    .line 161
    div-int/lit16 v0, p1, 0xe10

    .line 162
    rem-int/lit16 p1, p1, 0xe10

    div-int/lit8 v1, p1, 0x3c

    .line 163
    rem-int/lit8 p1, p1, 0x3c

    const-string v2, ""

    if-lez v0, :cond_2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/16 v0, 0xa

    if-lez v1, :cond_4

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v0, :cond_3

    const-string v2, "0"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 172
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "00:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-lez p1, :cond_6

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v0, :cond_5

    const-string v0, "0"

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 178
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public getEpisodeState()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->episodeState:I

    return v0
.end method

.method public getEpisodeTotalCount()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->episodeTotalCount:I

    return v0
.end method

.method public getEpisodeUploadCount()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->episodeUploadCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->id:J

    return-wide v0
.end method

.method public getLastPeriod()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->lastPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->playTime:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->score:I

    return v0
.end method

.method public getSortNum()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->sortNum:I

    return v0
.end method

.method public getSortNumString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getEpisodeState()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5171"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getEpisodeTotalCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u671f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getLastPeriod()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getLastPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u671f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getEpisodeUploadCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u671f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getEpisodeState()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getEpisodeTotalCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6\u5168"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u66f4\u65b0\u81f3 \u7b2c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getEpisodeUploadCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleWithType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPeriod()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7b2c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u671f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7b2c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u671f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7b2c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoTitle:Ljava/lang/String;

    return-object p1

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 75
    iget-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->title:Ljava/lang/String;

    return-object p1

    :cond_4
    const-string p1, ""

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->type:I

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoDuration:I

    return v0
.end method

.method public getVideoId()J
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoId:J

    return-wide v0
.end method

.method public getVideoInfoId()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoInfoId:J

    return-wide v0
.end method

.method public getVideoPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchSize(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 111
    iget v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoDuration:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 113
    iget v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->duration:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_2

    const/4 v2, 0x1

    .line 118
    :cond_2
    iget v3, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->playTime:I

    const/16 v4, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2

    const-string v2, "\u89c2\u770b\u81f3 "

    if-ne p1, v0, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result v5

    if-eq v5, v1, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPeriod()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7b2c"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u671f "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 126
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7b2c"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNum()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u671f "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 129
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7b2c"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->getSortNum()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u96c6 "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_1
    if-gt v3, v1, :cond_9

    if-ne p1, v1, :cond_6

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    if-ne p1, v0, :cond_8

    if-nez v3, :cond_7

    const-string p1, "\u672a\u89c2\u770b"

    return-object p1

    .line 140
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, ""

    return-object p1

    :cond_9
    if-le v3, v4, :cond_a

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "100%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAddTime(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->addTime:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->duration:I

    return-void
.end method

.method public setEpisodeState(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->episodeState:I

    return-void
.end method

.method public setEpisodeTotalCount(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->episodeTotalCount:I

    return-void
.end method

.method public setEpisodeUploadCount(I)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->episodeUploadCount:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->id:J

    return-void
.end method

.method public setLastPeriod(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->lastPeriod:Ljava/lang/String;

    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->period:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->playTime:I

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->score:I

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->sortNum:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->type:I

    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    .line 255
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoDuration:I

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoId:J

    return-void
.end method

.method public setVideoInfoId(J)V
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoInfoId:J

    return-void
.end method

.method public setVideoPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;->videoTitle:Ljava/lang/String;

    return-void
.end method
