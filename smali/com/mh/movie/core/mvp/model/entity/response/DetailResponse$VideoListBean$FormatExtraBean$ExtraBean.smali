.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraBean"
.end annotation


# instance fields
.field private duration:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 727
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->duration:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 735
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->size:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 731
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->duration:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 739
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->size:I

    return-void
.end method
