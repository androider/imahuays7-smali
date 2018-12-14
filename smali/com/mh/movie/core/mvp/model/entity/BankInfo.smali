.class public Lcom/mh/movie/core/mvp/model/entity/BankInfo;
.super Ljava/lang/Object;
.source "BankInfo.java"


# instance fields
.field private CN:Ljava/lang/String;

.field private EN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCN()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BankInfo;->CN:Ljava/lang/String;

    return-object v0
.end method

.method public getEN()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/BankInfo;->EN:Ljava/lang/String;

    return-object v0
.end method

.method public setCN(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BankInfo;->CN:Ljava/lang/String;

    return-void
.end method

.method public setEN(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/BankInfo;->EN:Ljava/lang/String;

    return-void
.end method
