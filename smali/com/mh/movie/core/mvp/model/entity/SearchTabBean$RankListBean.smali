.class public Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;
.super Ljava/lang/Object;
.source "SearchTabBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/SearchTabBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankListBean"
.end annotation


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private rank:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->videoId:I

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->flag:Ljava/lang/String;

    return-void
.end method

.method public setRank(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->rank:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/SearchTabBean$RankListBean;->videoId:I

    return-void
.end method
