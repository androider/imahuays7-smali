.class public Lcom/mh/movie/core/mvp/model/db/AdClickEvent;
.super Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;
.source "AdClickEvent.java"


# instance fields
.field advertiseId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertiseId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/mh/movie/core/mvp/model/db/AdClickEvent;->advertiseId:I

    return v0
.end method

.method public setAdvertiseId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/mh/movie/core/mvp/model/db/AdClickEvent;->advertiseId:I

    return-void
.end method
