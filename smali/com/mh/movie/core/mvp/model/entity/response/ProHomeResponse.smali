.class public Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;
.super Ljava/lang/Object;
.source "ProHomeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;
    }
.end annotation


# instance fields
.field private systemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;",
            ">;"
        }
    .end annotation
.end field

.field private threeDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;",
            ">;"
        }
    .end annotation
.end field

.field private totalMoney:I

.field private yesterdayTop:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->systemList:Ljava/util/List;

    return-object v0
.end method

.method public getThreeDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->threeDays:Ljava/util/List;

    return-object v0
.end method

.method public getTotalMoney()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->totalMoney:I

    return v0
.end method

.method public getYesterdayTop()Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->yesterdayTop:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;

    return-object v0
.end method

.method public setSystemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$SystemListBean;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->systemList:Ljava/util/List;

    return-void
.end method

.method public setThreeDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$ThreeDaysBean;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->threeDays:Ljava/util/List;

    return-void
.end method

.method public setTotalMoney(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->totalMoney:I

    return-void
.end method

.method public setYesterdayTop(Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse;->yesterdayTop:Lcom/mh/movie/core/mvp/model/entity/response/ProHomeResponse$YesterdayTopBean;

    return-void
.end method
