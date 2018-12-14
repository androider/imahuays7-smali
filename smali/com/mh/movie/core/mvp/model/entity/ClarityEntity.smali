.class public Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;
.super Ljava/lang/Object;
.source "ClarityEntity.java"


# instance fields
.field private name:Ljava/lang/String;

.field private resolution:I

.field private select:Z

.field private size:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->resolution:I

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->select:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setResolution(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->resolution:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->select:Z

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->size:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->url:Ljava/lang/String;

    return-void
.end method
