.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;,
        Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;
    }
.end annotation


# static fields
.field public static final DOWNLOADED:I = 0x2

.field public static final DOWNLOADING:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final SELECT:I = 0x3


# instance fields
.field private duration:I

.field private formatExtra:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

.field private freeShow:Z

.field private id:I

.field private isFavorite:Ljava/lang/Object;

.field private isHighlight:I

.field private isWatch:Z

.field private lastPlayTime:I

.field private m3u8Format:Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

.field private m3u8PlayUrl:Ljava/lang/String;

.field private period:Ljava/lang/String;

.field private playType:I

.field private sortNum:I

.field private statEndTimeP:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;

.field private tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

.field private title:Ljava/lang/String;

.field private videoState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->duration:I

    return v0
.end method

.method public getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->formatExtra:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 501
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->id:I

    return v0
.end method

.method public getIsFavorite()Ljava/lang/Object;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->isFavorite:Ljava/lang/Object;

    return-object v0
.end method

.method public getIsHighlight()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->isHighlight:I

    return v0
.end method

.method public getLastPlayTime()I
    .locals 1

    .line 565
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->lastPlayTime:I

    return v0
.end method

.method public getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->m3u8Format:Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    return-object v0
.end method

.method public getM3u8PlayUrl()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->m3u8PlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->playType:I

    return v0
.end method

.method public getSortNum()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->sortNum:I

    return v0
.end method

.method public getStatEndTimeP()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->statEndTimeP:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;

    return-object v0
.end method

.method public getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->videoState:I

    return v0
.end method

.method public isFreeShow()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->freeShow:Z

    return v0
.end method

.method public isWatch()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->isWatch:Z

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 561
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->duration:I

    return-void
.end method

.method public setFormatExtra(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->formatExtra:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    return-void
.end method

.method public setFreeShow(Z)V
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->freeShow:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 505
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->id:I

    return-void
.end method

.method public setIsFavorite(Ljava/lang/Object;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->isFavorite:Ljava/lang/Object;

    return-void
.end method

.method public setIsHighlight(I)V
    .locals 0

    .line 521
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->isHighlight:I

    return-void
.end method

.method public setLastPlayTime(I)V
    .locals 0

    .line 569
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->lastPlayTime:I

    return-void
.end method

.method public setM3u8Format(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->m3u8Format:Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    return-void
.end method

.method public setM3u8PlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->m3u8PlayUrl:Ljava/lang/String;

    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->period:Ljava/lang/String;

    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->playType:I

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    .line 537
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->sortNum:I

    return-void
.end method

.method public setStatEndTimeP(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->statEndTimeP:Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$StatEndTimeP;

    return-void
.end method

.method public setTagDTO(Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoState(I)V
    .locals 0

    .line 497
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->videoState:I

    return-void
.end method

.method public setWatch(Z)V
    .locals 0

    .line 489
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->isWatch:Z

    return-void
.end method
