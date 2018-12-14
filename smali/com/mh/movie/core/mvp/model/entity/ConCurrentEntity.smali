.class public Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;
.super Ljava/lang/Object;
.source "ConCurrentEntity.java"


# instance fields
.field private num:I

.field private subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->num:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setNum(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->num:I

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/ConCurrentEntity;->subTitle:Ljava/lang/String;

    return-void
.end method
