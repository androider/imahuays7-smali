.class public Lcom/mh/movie/core/mvp/model/entity/DownloadData;
.super Ljava/lang/Object;
.source "DownloadData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addTime:J

.field private downloadSize:J

.field private downloadState:I

.field private id:Ljava/lang/String;

.field private isFinish:Z

.field private localUrl:Ljava/lang/String;

.field private period:Ljava/lang/String;

.field private quality:Ljava/lang/String;

.field private sortNum:I

.field private speed:J

.field private totalSize:J

.field private type:I

.field private videoDuration:I

.field private videoId:J

.field private videoInfoId:J

.field private videoPreviewUrl:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;

.field private watchSize:I


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;Ljava/lang/String;JJ)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->id:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getVideoInfoId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoInfoId:J

    .line 40
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoId:J

    .line 41
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getType()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->type:I

    .line 42
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->getPreviewUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoPreviewUrl:Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoTitle:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoUrl:Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoDuration:I

    .line 46
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->sortNum:I

    .line 47
    iput-wide p4, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    const-wide/16 p3, 0x0

    .line 48
    iput-wide p3, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->localUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->isFinish:Z

    .line 51
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadState:I

    .line 52
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->watchSize:I

    .line 53
    iput-wide p6, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->addTime:J

    .line 54
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadDefaultClarity()I

    move-result p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->quality:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPeriod()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->period:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 298
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->addTime:J

    return-wide v0
.end method

.method public getDowloadState()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadState:I

    return v0
.end method

.method public getDownTittle()Ljava/lang/String;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getPeriod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u671f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getSortNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u671f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getSortNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSize()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->localUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->period:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressValue()I
    .locals 7

    .line 114
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 115
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 117
    :goto_0
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 118
    iget-wide v2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x1

    .line 121
    :goto_1
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2KByte(J)F

    move-result v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getProportionText()Ljava/lang/String;
    .locals 7

    .line 94
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 95
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 97
    :goto_0
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 98
    iget-wide v2, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    .line 101
    :cond_1
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2MByte(J)F

    move-result v0

    .line 102
    invoke-static {v2, v3}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2KByte(J)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    move v0, v1

    .line 108
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "M/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getSortNum()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->sortNum:I

    return v0
.end method

.method public getSpeed()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->speed:J

    return-wide v0
.end method

.method public getSpeedStr()Ljava/lang/String;
    .locals 5

    .line 153
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->speed:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "0KB/S"

    return-object v0

    .line 156
    :cond_0
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->speed:J

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2KByte(J)F

    move-result v0

    const/high16 v1, 0x44800000    # 1024.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 158
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->speed:J

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2MByte(J)F

    move-result v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MB/S"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " KB/S"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateText()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 60
    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\u7f13\u5b58\u7a7a\u95f4\u4e0d\u8db3"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u65e0\u8fd0\u8425\u5546\u7f51\u7edc"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u7f13\u5b58\u4e2d\u65ad\uff0c\u70b9\u51fb\u7ee7\u7eed"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u7f13\u5b58\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u6682\u505c"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u7f13\u5b58\u4e2d"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u7b49\u5f85\u7f13\u5b58"

    :goto_0
    :pswitch_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalSize()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->type:I

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoDuration:I

    return v0
.end method

.method public getVideoId()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoId:J

    return-wide v0
.end method

.method public getVideoInfoId()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoInfoId:J

    return-wide v0
.end method

.method public getVideoPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchSize()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->watchSize:I

    return v0
.end method

.method public getWatchSizePercent()F
    .locals 2

    .line 145
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->watchSize:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isFinish()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->isFinish:Z

    return v0
.end method

.method public setAddTime(J)V
    .locals 0

    .line 302
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->addTime:J

    return-void
.end method

.method public setDowloadState(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadState:I

    return-void
.end method

.method public setDownloadSize(J)V
    .locals 0

    .line 262
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->downloadSize:J

    return-void
.end method

.method public setFinish(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->isFinish:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocalUrl(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->localUrl:Ljava/lang/String;

    return-void
.end method

.method public setPeriod(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->period:Ljava/lang/String;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->quality:Ljava/lang/String;

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->sortNum:I

    return-void
.end method

.method public setSpeed(J)V
    .locals 0

    .line 174
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->speed:J

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 254
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->totalSize:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->type:I

    return-void
.end method

.method public setVideoDuration(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoDuration:I

    return-void
.end method

.method public setVideoId(J)V
    .locals 0

    .line 198
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoId:J

    return-void
.end method

.method public setVideoInfoId(J)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoInfoId:J

    return-void
.end method

.method public setVideoPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWatchSize(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->watchSize:I

    return-void
.end method
