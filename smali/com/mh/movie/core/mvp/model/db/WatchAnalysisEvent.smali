.class public Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;
.super Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;
.source "WatchAnalysisEvent.java"


# instance fields
.field videoId:I

.field videoInfoId:I

.field videoType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->videoId:I

    return v0
.end method

.method public getVideoInfoId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->videoInfoId:I

    return v0
.end method

.method public getVideoType()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->videoType:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoId(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->videoId:I

    return-void
.end method

.method public setVideoInfoId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->videoInfoId:I

    return-void
.end method

.method public setVideoType(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->videoType:Ljava/lang/String;

    return-void
.end method
