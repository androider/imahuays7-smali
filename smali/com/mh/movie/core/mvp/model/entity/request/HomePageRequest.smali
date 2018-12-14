.class public Lcom/mh/movie/core/mvp/model/entity/request/HomePageRequest;
.super Ljava/lang/Object;
.source "HomePageRequest.java"


# instance fields
.field private isFirst:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsFirst()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/HomePageRequest;->isFirst:I

    return v0
.end method

.method public setIsFirst(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/HomePageRequest;->isFirst:I

    return-void
.end method
