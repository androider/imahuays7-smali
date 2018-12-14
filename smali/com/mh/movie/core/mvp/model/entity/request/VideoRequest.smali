.class public Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;
.super Ljava/lang/Object;
.source "VideoRequest.java"


# instance fields
.field private from:I

.field private videoId:I

.field private videoInfoId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->from:I

    .line 16
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->videoId:I

    .line 17
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->videoInfoId:I

    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->from:I

    return v0
.end method

.method public getVideoId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->videoId:I

    return v0
.end method

.method public getVideoInfoId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->videoInfoId:I

    return v0
.end method

.method public setFrom(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->from:I

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->videoId:I

    return-void
.end method

.method public setVideoInfoId(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/VideoRequest;->videoInfoId:I

    return-void
.end method
