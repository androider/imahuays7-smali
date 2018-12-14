.class public Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;
.super Ljava/lang/Object;
.source "BindAliPayRequest.java"


# instance fields
.field private alipayAccount:Ljava/lang/String;

.field private alipayName:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlipayAccount()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->alipayAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAlipayName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->alipayName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->userId:J

    return-wide v0
.end method

.method public setAlipayAccount(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->alipayAccount:Ljava/lang/String;

    return-void
.end method

.method public setAlipayName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->alipayName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/BindAliPayRequest;->userId:J

    return-void
.end method
