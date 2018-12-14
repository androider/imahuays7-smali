.class public Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;
.super Ljava/lang/Object;
.source "LoginOutResponse.java"


# instance fields
.field private expiry:I

.field private token:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpiry()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->expiry:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->uid:J

    return-wide v0
.end method

.method public setExpiry(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->expiry:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginOutResponse;->uid:J

    return-void
.end method
