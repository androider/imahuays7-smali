.class public Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;
.super Ljava/lang/Object;
.source "BootadsListBean.java"


# instance fields
.field private id:I

.field private linkUrl:Ljava/lang/String;

.field private targetType:I

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;


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

    .line 19
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->id:I

    return v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->targetType:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->id:I

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->linkUrl:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->targetType:I

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;->title:Ljava/lang/String;

    return-void
.end method
