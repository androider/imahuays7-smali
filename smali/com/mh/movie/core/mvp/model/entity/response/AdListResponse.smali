.class public Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;
.super Ljava/lang/Object;
.source "AdListResponse.java"


# instance fields
.field private id:I

.field private linkUrl:Ljava/lang/String;

.field private showType:I

.field private targetType:I

.field private thumbnailUrl:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->id:I

    return v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->showType:I

    return v0
.end method

.method public getTargetType()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->targetType:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->type:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->id:I

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->linkUrl:Ljava/lang/String;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->showType:I

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->targetType:I

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/AdListResponse;->type:I

    return-void
.end method
