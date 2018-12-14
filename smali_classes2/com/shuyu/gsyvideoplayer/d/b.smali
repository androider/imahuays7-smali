.class public Lcom/shuyu/gsyvideoplayer/d/b;
.super Ljava/lang/Object;
.source "GSYVideoModel.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/d/b;->mUrl:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/d/b;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/b;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/d/b;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/d/b;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/d/b;->mUrl:Ljava/lang/String;

    return-void
.end method
