.class public Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;
.super Ljava/lang/Object;
.source "MyPageResponse.java"


# instance fields
.field private day:I

.field private favList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation
.end field

.field private favoriteNum:I

.field private isNewRegist:I

.field private money:I

.field private playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation
.end field

.field private playNum:I

.field private userDetail:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->day:I

    return v0
.end method

.method public getFavList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->favList:Ljava/util/List;

    return-object v0
.end method

.method public getFavoriteNum()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->favoriteNum:I

    return v0
.end method

.method public getIsNewRegist()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->isNewRegist:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->money:I

    return v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->playList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayNum()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->playNum:I

    return v0
.end method

.method public getUserDetail()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->userDetail:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    return-object v0
.end method

.method public setDay(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->day:I

    return-void
.end method

.method public setFavList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->favList:Ljava/util/List;

    return-void
.end method

.method public setFavoriteNum(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->favoriteNum:I

    return-void
.end method

.method public setIsNewRegist(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->isNewRegist:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->money:I

    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->playList:Ljava/util/List;

    return-void
.end method

.method public setPlayNum(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->playNum:I

    return-void
.end method

.method public setUserDetail(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/MyPageResponse;->userDetail:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    return-void
.end method
