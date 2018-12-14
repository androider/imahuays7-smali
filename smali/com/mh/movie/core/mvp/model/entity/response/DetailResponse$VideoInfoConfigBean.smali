.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfoConfigBean"
.end annotation


# instance fields
.field private videoCanDown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVideoCanDown()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;->videoCanDown:Z

    return v0
.end method

.method public setVideoCanDown(Z)V
    .locals 0

    .line 407
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;->videoCanDown:Z

    return-void
.end method
