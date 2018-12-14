.class public Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;
.super Ljava/lang/Object;
.source "DownUrlRequest.java"


# instance fields
.field private format:Ljava/lang/String;

.field private videoId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->videoId:I

    return v0
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->format:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;->videoId:I

    return-void
.end method
