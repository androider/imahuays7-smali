.class public Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;
.super Ljava/lang/Object;
.source "HeaderInfo.java"


# instance fields
.field public XAuthSign:Ljava/lang/String;

.field public XAuthTimeStamp:Ljava/lang/String;

.field public XAuthToken:Ljava/lang/String;

.field public XClientIP:Ljava/lang/String;

.field public XClientNonceStr:Ljava/lang/String;

.field public XClientSign:Ljava/lang/String;

.field public XClientTimeStamp:Ljava/lang/String;

.field public XClientVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthSign:Ljava/lang/String;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthTimeStamp:Ljava/lang/String;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getXAuthSign()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthSign:Ljava/lang/String;

    return-object v0
.end method

.method public getXAuthTimeStamp()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getXAuthToken()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getXClientIP()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getXClientNonceStr()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientNonceStr:Ljava/lang/String;

    return-object v0
.end method

.method public getXClientSign()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientSign:Ljava/lang/String;

    return-object v0
.end method

.method public getXClientTimeStamp()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getXClientVersion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setXAuthSign(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthSign:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setXAuthTimeStamp(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthTimeStamp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setXAuthToken(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XAuthToken:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setXClientIP(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientIP:Ljava/lang/String;

    return-void
.end method

.method public setXClientNonceStr(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientNonceStr:Ljava/lang/String;

    return-void
.end method

.method public setXClientSign(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientSign:Ljava/lang/String;

    return-void
.end method

.method public setXClientTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setXClientVersion(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/HeaderInfo;->XClientVersion:Ljava/lang/String;

    return-void
.end method
