.class public Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;
.super Ljava/lang/Object;
.source "BankResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;
    }
.end annotation


# instance fields
.field private bankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;",
            ">;"
        }
    .end annotation
.end field

.field private groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->bankList:Ljava/util/List;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public setBankList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->bankList:Ljava/util/List;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;->groupName:Ljava/lang/String;

    return-void
.end method
