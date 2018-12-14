.class public Lcom/mh/movie/core/mvp/model/entity/AddressEntity;
.super Ljava/lang/Object;
.source "AddressEntity.java"


# instance fields
.field private City:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->City:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->City:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->Title:Ljava/lang/String;

    return-void
.end method
