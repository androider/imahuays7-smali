.class public Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;
.super Ljava/lang/Object;
.source "PixelsEntity.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->width:I

    .line 9
    iput p2, p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/PixelsEntity;->width:I

    return-void
.end method
