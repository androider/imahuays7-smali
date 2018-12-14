.class public Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;
.super Ljava/lang/Object;
.source "MessageTargetEntity.java"


# instance fields
.field private content:Ljava/lang/String;

.field private submitTime:Ljava/lang/String;

.field private submitType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitTime()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->submitTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->submitType:Ljava/util/List;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setSubmitTime(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->submitTime:Ljava/lang/String;

    return-void
.end method

.method public setSubmitType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->submitType:Ljava/util/List;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/MessageTargetEntity;->videoTitle:Ljava/lang/String;

    return-void
.end method
