.class public Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;
.super Ljava/lang/Object;
.source "VideoAddressResponse.java"


# instance fields
.field private m3u8Format:Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

.field private m3u8PlayUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getM3u8Format()Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->m3u8Format:Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    return-object v0
.end method

.method public getM3u8PlayUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->m3u8PlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setM3u8Format(Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->m3u8Format:Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;

    return-void
.end method

.method public setM3u8PlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoAddressResponse;->m3u8PlayUrl:Ljava/lang/String;

    return-void
.end method
