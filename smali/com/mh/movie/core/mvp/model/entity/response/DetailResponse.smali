.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;
    }
.end annotation


# static fields
.field public static final VIDEO_TYPE_ANIME:I = 0x3

.field public static final VIDEO_TYPE_FILM:I = 0x1

.field public static final VIDEO_TYPE_TV:I = 0x2

.field public static final VIDEO_TYPE_VARIETY:I = 0x4


# instance fields
.field private classifyTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private coverHUrl:Ljava/lang/String;

.field private coverTime:I

.field private coverUrl:Ljava/lang/String;

.field private createUser:Ljava/lang/String;

.field private director:Ljava/lang/String;

.field private doubanScore:D

.field private downloadScore:I

.field private episodeState:I

.field private episodeTotalCount:I

.field private episodeUploadCount:I

.field private favorited:I

.field private gmtCreateStr:Ljava/lang/String;

.field private id:I

.field private imdbScore:D

.field private intro:Ljava/lang/String;

.field private isLike:I

.field private keywords:Ljava/lang/String;

.field private lastPeriod:Ljava/lang/String;

.field private likeNum:I

.field private playCount:I

.field private playScore:I

.field private reviewNum:I

.field private shareHtmlAddr:Ljava/lang/String;

.field private staring:Ljava/lang/String;

.field private tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

.field private tagSource:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private unlike:I

.field private unlikeNum:I

.field private userGoodsConfig:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;

.field private videoInfoConfig:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;

.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private videoPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
            ">;"
        }
    .end annotation
.end field

.field private videoShareConfig:Ljava/lang/Object;

.field private vipFlag:I

.field private years:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->likeNum:I

    .line 74
    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->unlikeNum:I

    return-void
.end method


# virtual methods
.method public getClassifyTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->classifyTypeList:Ljava/util/List;

    return-object v0
.end method

.method public getCoverHUrl()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->coverHUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverTime()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->coverTime:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUser()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->createUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDoubanScore()D
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->doubanScore:D

    return-wide v0
.end method

.method public getDownloadBean()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;
    .locals 2

    .line 794
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;-><init>()V

    .line 795
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->access$002(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)I

    .line 796
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->access$102(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)I

    .line 797
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->access$202(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadScore()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->downloadScore:I

    return v0
.end method

.method public getEpisodeState()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->episodeState:I

    return v0
.end method

.method public getEpisodeTotalCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->episodeTotalCount:I

    return v0
.end method

.method public getEpisodeUploadCount()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->episodeUploadCount:I

    return v0
.end method

.method public getFavorited()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->favorited:I

    return v0
.end method

.method public getGmtCreateStr()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->gmtCreateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->id:I

    return v0
.end method

.method public getImdbScore()D
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->imdbScore:D

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLike()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->isLike:I

    return v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPeriod()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->lastPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeNum()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->likeNum:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->playCount:I

    return v0
.end method

.method public getPlayScore()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->playScore:I

    return v0
.end method

.method public getReviewNum()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->reviewNum:I

    return v0
.end method

.method public getShareHtmlAddr()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->shareHtmlAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getStaring()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->staring:Ljava/lang/String;

    return-object v0
.end method

.method public getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-object v0
.end method

.method public getTagSource()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->tagSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->type:I

    return v0
.end method

.method public getUnLike()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->unlike:I

    return v0
.end method

.method public getUnlikeNum()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->unlikeNum:I

    return v0
.end method

.method public getUserGoodsConfig()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->userGoodsConfig:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;

    return-object v0
.end method

.method public getVideoInfoConfig()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoInfoConfig:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;

    return-object v0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoList:Ljava/util/List;

    return-object v0
.end method

.method public getVideoPageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoPageList:Ljava/util/List;

    return-object v0
.end method

.method public getVideoShareConfig()Ljava/lang/Object;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoShareConfig:Ljava/lang/Object;

    return-object v0
.end method

.method public getVipFlag()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->vipFlag:I

    return v0
.end method

.method public getYears()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->years:I

    return v0
.end method

.method public setClassifyTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->classifyTypeList:Ljava/util/List;

    return-void
.end method

.method public setCoverHUrl(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->coverHUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverTime(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->coverTime:I

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreateUser(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->createUser:Ljava/lang/String;

    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->director:Ljava/lang/String;

    return-void
.end method

.method public setDoubanScore(D)V
    .locals 0

    .line 152
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->doubanScore:D

    return-void
.end method

.method public setDownloadScore(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->downloadScore:I

    return-void
.end method

.method public setEpisodeState(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->episodeState:I

    return-void
.end method

.method public setEpisodeTotalCount(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->episodeTotalCount:I

    return-void
.end method

.method public setEpisodeUploadCount(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->episodeUploadCount:I

    return-void
.end method

.method public setFavorited(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->favorited:I

    return-void
.end method

.method public setGmtCreateStr(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->gmtCreateStr:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->id:I

    return-void
.end method

.method public setImdbScore(D)V
    .locals 0

    .line 160
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->imdbScore:D

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->intro:Ljava/lang/String;

    return-void
.end method

.method public setIsLike(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->isLike:I

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setLastPeriod(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->lastPeriod:Ljava/lang/String;

    return-void
.end method

.method public setLikeNum(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->likeNum:I

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->playCount:I

    return-void
.end method

.method public setPlayScore(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->playScore:I

    return-void
.end method

.method public setReviewNum(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->reviewNum:I

    return-void
.end method

.method public setShareHtmlAddr(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->shareHtmlAddr:Ljava/lang/String;

    return-void
.end method

.method public setStaring(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->staring:Ljava/lang/String;

    return-void
.end method

.method public setTagDTO(Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-void
.end method

.method public setTagSource(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->tagSource:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->type:I

    return-void
.end method

.method public setUnLike(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->unlike:I

    return-void
.end method

.method public setUnlikeNum(I)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->unlikeNum:I

    return-void
.end method

.method public setUserGoodsConfig(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->userGoodsConfig:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$UserGoodsConfigBean;

    return-void
.end method

.method public setVideoInfoConfig(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoInfoConfig:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;

    return-void
.end method

.method public setVideoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoList:Ljava/util/List;

    return-void
.end method

.method public setVideoPageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;",
            ">;)V"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoPageList:Ljava/util/List;

    return-void
.end method

.method public setVideoShareConfig(Ljava/lang/Object;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->videoShareConfig:Ljava/lang/Object;

    return-void
.end method

.method public setVipFlag(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->vipFlag:I

    return-void
.end method

.method public setYears(I)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->years:I

    return-void
.end method
