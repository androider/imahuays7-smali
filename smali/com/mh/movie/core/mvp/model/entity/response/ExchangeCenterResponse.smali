.class public Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;
.super Ljava/lang/Object;
.source "ExchangeCenterResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;
    }
.end annotation


# instance fields
.field private commodityInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private currentTime:J

.field private money:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommodityInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->commodityInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->currentTime:J

    return-wide v0
.end method

.method public getMoney()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->money:I

    return v0
.end method

.method public setCommodityInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->commodityInfoList:Ljava/util/List;

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->currentTime:J

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->money:I

    return-void
.end method
