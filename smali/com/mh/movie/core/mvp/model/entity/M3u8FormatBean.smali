.class public Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;
.super Ljava/lang/Object;
.source "M3u8FormatBean.java"


# instance fields
.field private _$1080P:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "1080P"
    .end annotation
.end field

.field private _$360P:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "360P"
    .end annotation
.end field

.field private _$480P:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "480P"
    .end annotation
.end field

.field private _$720P:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        a = "720P"
    .end annotation
.end field

.field private free:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFree()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->free:Ljava/lang/String;

    return-object v0
.end method

.method public getM3u8Format(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$360P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$360P()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$480P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$480P()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$720P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$720P()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 40
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$1080P()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 41
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->get_$1080P()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0

    :cond_7
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    .line 45
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getFree()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->getFree()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v0

    :cond_9
    return-object v0
.end method

.method public get_$1080P()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$1080P:Ljava/lang/String;

    return-object v0
.end method

.method public get_$360P()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$360P:Ljava/lang/String;

    return-object v0
.end method

.method public get_$480P()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$480P:Ljava/lang/String;

    return-object v0
.end method

.method public get_$720P()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$720P:Ljava/lang/String;

    return-object v0
.end method

.method public setFree(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->free:Ljava/lang/String;

    return-void
.end method

.method public set_$1080P(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$1080P:Ljava/lang/String;

    return-void
.end method

.method public set_$360P(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$360P:Ljava/lang/String;

    return-void
.end method

.method public set_$480P(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$480P:Ljava/lang/String;

    return-void
.end method

.method public set_$720P(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/M3u8FormatBean;->_$720P:Ljava/lang/String;

    return-void
.end method
