.class public Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;
.super Ljava/lang/Object;
.source "WalletResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountLogListBean"
.end annotation


# instance fields
.field private businessTitle:Ljava/lang/String;

.field private gmtCreateStr:Ljava/lang/String;

.field private id:I

.field private money:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessTitle()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->businessTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreateStr()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->gmtCreateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->id:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->money:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->type:I

    return v0
.end method

.method public setBusinessTitle(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->businessTitle:Ljava/lang/String;

    return-void
.end method

.method public setGmtCreateStr(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->gmtCreateStr:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->id:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->money:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;->type:I

    return-void
.end method
