.class public Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;
.super Ljava/lang/Object;
.source "TagDTOBean.java"


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private frontColor:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontColor()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->frontColor:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setFrontColor(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->frontColor:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->name:Ljava/lang/String;

    return-void
.end method
