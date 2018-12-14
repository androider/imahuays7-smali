.class public Lcom/mh/movie/core/mvp/ui/utils/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayUrlInfo(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 23
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$1080P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 24
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->get_$1080P()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result p0

    .line 25
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->get_$1080P()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getDuration()I

    goto/16 :goto_0

    .line 18
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$720P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 19
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->get_$720P()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result p0

    .line 20
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->get_$720P()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getDuration()I

    goto :goto_0

    .line 13
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$480P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 14
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->get_$480P()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result p0

    .line 15
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->get_$480P()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getDuration()I

    goto :goto_0

    .line 28
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8PlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getFree()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 29
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFree()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getSize()I

    move-result p0

    .line 30
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getFormatExtra()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean;->getFree()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean$FormatExtraBean$ExtraBean;->getDuration()I

    :goto_0
    const-string p1, "%dM"

    const/4 v2, 0x1

    .line 33
    new-array v3, v2, [Ljava/lang/Object;

    div-int/lit16 p0, p0, 0x400

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static start(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    if-ltz p0, :cond_1

    .line 41
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/PlayUtils;->getPlayUrlInfo(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    aget-object p0, v0, v1

    return-object p0
.end method
