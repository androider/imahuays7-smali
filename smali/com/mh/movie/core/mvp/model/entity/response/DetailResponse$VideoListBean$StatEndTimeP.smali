.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatEndTimeP"
.end annotation


# instance fields
.field private e:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getE()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;->e:I

    return v0
.end method

.method public getS()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;->s:I

    return v0
.end method

.method public setE(I)V
    .locals 0

    .line 625
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;->e:I

    return-void
.end method

.method public setS(I)V
    .locals 0

    .line 617
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;->s:I

    return-void
.end method
