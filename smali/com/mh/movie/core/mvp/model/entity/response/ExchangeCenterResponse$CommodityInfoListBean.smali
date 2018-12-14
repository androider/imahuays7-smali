.class public Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;
.super Ljava/lang/Object;
.source "ExchangeCenterResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommodityInfoListBean"
.end annotation


# instance fields
.field private authId:I

.field private descrition:Ljava/lang/String;

.field private hasFlag:I

.field private id:I

.field private money:I

.field private title:Ljava/lang/String;

.field private validNum:I

.field private validTime:J

.field private validType:I

.field private validUnit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthId()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->authId:I

    return v0
.end method

.method public getDescrition()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->descrition:Ljava/lang/String;

    return-object v0
.end method

.method public getHasFlag()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->hasFlag:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->id:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->money:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValidNum()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validNum:I

    return v0
.end method

.method public getValidTime()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validTime:J

    return-wide v0
.end method

.method public getValidType()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validType:I

    return v0
.end method

.method public getValidUnit()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validUnit:I

    return v0
.end method

.method public setAuthId(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->authId:I

    return-void
.end method

.method public setDescrition(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->descrition:Ljava/lang/String;

    return-void
.end method

.method public setHasFlag(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->hasFlag:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->id:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->money:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setValidNum(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validNum:I

    return-void
.end method

.method public setValidTime(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validTime:J

    return-void
.end method

.method public setValidType(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validType:I

    return-void
.end method

.method public setValidUnit(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->validUnit:I

    return-void
.end method
