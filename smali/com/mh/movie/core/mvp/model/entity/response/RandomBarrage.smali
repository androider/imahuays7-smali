.class public Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;
.super Ljava/lang/Object;
.source "RandomBarrage.java"


# instance fields
.field private content:Ljava/lang/String;

.field private id:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->content:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->id:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/RandomBarrage;->type:I

    return-void
.end method
