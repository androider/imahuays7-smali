.class public Lcom/mh/movie/core/mvp/model/entity/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field private API_URL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private BLOG_URL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private DOMAIN_URL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private HTML_URL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private RES_URL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAPI_URL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->API_URL:Ljava/util/List;

    return-object v0
.end method

.method public getBLOG_URL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->BLOG_URL:Ljava/util/List;

    return-object v0
.end method

.method public getDOMAIN_URL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->DOMAIN_URL:Ljava/util/List;

    return-object v0
.end method

.method public getHTML_URL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->HTML_URL:Ljava/util/List;

    return-object v0
.end method

.method public getRES_URL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->RES_URL:Ljava/util/List;

    return-object v0
.end method

.method public getUrlWithKey(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "RES_URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "HTML_URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "BLOG_URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "API_URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "DOMAIN_URL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 30
    :pswitch_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getAPI_URL()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 27
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getBLOG_URL()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 24
    :pswitch_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getHTML_URL()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 21
    :pswitch_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getDOMAIN_URL()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 18
    :pswitch_4
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getRES_URL()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2d26c0ac -> :sswitch_4
        -0x4d61676 -> :sswitch_3
        0x74aff32 -> :sswitch_2
        0x1aa0aabb -> :sswitch_1
        0x6c3b7510 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAPI_URL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->API_URL:Ljava/util/List;

    return-void
.end method

.method public setBLOG_URL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->BLOG_URL:Ljava/util/List;

    return-void
.end method

.method public setDOMAIN_URL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->DOMAIN_URL:Ljava/util/List;

    return-void
.end method

.method public setHTML_URL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->HTML_URL:Ljava/util/List;

    return-void
.end method

.method public setRES_URL(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/Domain;->RES_URL:Ljava/util/List;

    return-void
.end method
