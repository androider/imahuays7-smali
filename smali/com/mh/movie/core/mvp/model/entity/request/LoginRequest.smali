.class public Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;
.super Ljava/lang/Object;
.source "LoginRequest.java"


# instance fields
.field private invitation:Ljava/lang/String;

.field private model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvitation()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->invitation:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->model:Ljava/lang/String;

    return-object v0
.end method

.method public setInvitation(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->invitation:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;->model:Ljava/lang/String;

    return-void
.end method
