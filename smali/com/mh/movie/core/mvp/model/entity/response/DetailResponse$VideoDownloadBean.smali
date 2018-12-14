.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoDownloadBean"
.end annotation


# instance fields
.field private previewUrl:Ljava/lang/String;

.field private type:I

.field private videoInfoId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)I
    .locals 0

    .line 802
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->videoInfoId:I

    return p1
.end method

.method static synthetic access$102(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)I
    .locals 0

    .line 802
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->type:I

    return p1
.end method

.method static synthetic access$202(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->previewUrl:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 816
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->type:I

    return v0
.end method

.method public getVideoInfoId()I
    .locals 1

    .line 808
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->videoInfoId:I

    return v0
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 820
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->type:I

    return-void
.end method

.method public setVideoInfoId(I)V
    .locals 0

    .line 812
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;->videoInfoId:I

    return-void
.end method
