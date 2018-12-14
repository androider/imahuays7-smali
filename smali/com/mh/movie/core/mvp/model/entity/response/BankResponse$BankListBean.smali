.class public Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;
.super Ljava/lang/Object;
.source "BankResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/BankResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BankListBean"
.end annotation


# instance fields
.field private bankCode:Ljava/lang/String;

.field private bankName:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->id:I

    return v0
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->bankCode:Ljava/lang/String;

    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->bankName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/BankResponse$BankListBean;->id:I

    return-void
.end method
