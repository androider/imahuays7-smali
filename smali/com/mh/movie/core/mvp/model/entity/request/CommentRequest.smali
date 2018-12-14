.class public Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;
.super Ljava/lang/Object;
.source "CommentRequest.java"


# instance fields
.field private childId:I

.field private content:Ljava/lang/String;

.field private flag:I

.field private parentId:I

.field private videoId:I

.field private videoInfoId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->childId:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->flag:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->parentId:I

    return v0
.end method

.method public getVideoId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->videoId:I

    return v0
.end method

.method public getVideoInfoId()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->videoInfoId:I

    return v0
.end method

.method public setChildId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->childId:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->content:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->flag:I

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->parentId:I

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->videoId:I

    return-void
.end method

.method public setVideoInfoId(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->videoInfoId:I

    return-void
.end method
