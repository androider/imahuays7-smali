.class public Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;
.super Ljava/lang/Object;
.source "AddProRequest.java"


# instance fields
.field proId:Ljava/lang/String;

.field systemId:I

.field userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->proId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->systemId:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->userId:J

    return-wide v0
.end method

.method public setProId(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->proId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->systemId:I

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/AddProRequest;->userId:J

    return-void
.end method
