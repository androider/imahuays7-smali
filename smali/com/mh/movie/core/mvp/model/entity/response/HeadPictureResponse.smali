.class public Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;
.super Ljava/lang/Object;
.source "HeadPictureResponse.java"


# instance fields
.field private id:I

.field private isSelect:Z

.field private path:Ljava/lang/String;


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

    .line 23
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->isSelect:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->id:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->path:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HeadPictureResponse;->isSelect:Z

    return-void
.end method
