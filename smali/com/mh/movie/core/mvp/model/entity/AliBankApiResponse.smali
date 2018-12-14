.class public Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;
.super Ljava/lang/Object;
.source "AliBankApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;
    }
.end annotation


# instance fields
.field private bank:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;",
            ">;"
        }
    .end annotation
.end field

.field private stat:Ljava/lang/String;

.field private validated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBank()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->bank:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getStat()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->stat:Ljava/lang/String;

    return-object v0
.end method

.method public isValidated()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->validated:Z

    return v0
.end method

.method public setBank(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->bank:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->cardType:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->key:Ljava/lang/String;

    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse$MessagesBean;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->messages:Ljava/util/List;

    return-void
.end method

.method public setStat(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->stat:Ljava/lang/String;

    return-void
.end method

.method public setValidated(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/AliBankApiResponse;->validated:Z

    return-void
.end method
