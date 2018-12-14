.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserGoodsConfigBean"
.end annotation


# instance fields
.field private hotVideoCanPlay:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHotVideoCanPlay()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;->hotVideoCanPlay:Z

    return v0
.end method

.method public setHotVideoCanPlay(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;->hotVideoCanPlay:Z

    return-void
.end method
