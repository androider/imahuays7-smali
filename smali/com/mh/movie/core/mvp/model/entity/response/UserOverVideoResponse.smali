.class public Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideoResponse;
.super Ljava/lang/Object;
.source "UserOverVideoResponse.java"


# instance fields
.field private num:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideoResponse;->num:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideoResponse;->type:I

    return v0
.end method

.method public setNum(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideoResponse;->num:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideoResponse;->type:I

    return-void
.end method
