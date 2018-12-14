.class public Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;
.super Ljava/lang/Object;
.source "UserOverVideo.java"


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

    .line 17
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;->num:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;->type:I

    return v0
.end method

.method public setNum(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;->num:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserOverVideo;->type:I

    return-void
.end method
