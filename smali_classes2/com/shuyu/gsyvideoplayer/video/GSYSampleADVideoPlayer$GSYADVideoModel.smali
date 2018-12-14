.class public Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;
.super Lcom/shuyu/gsyvideoplayer/d/b;
.source "GSYSampleADVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSYADVideoModel"
.end annotation


# static fields
.field public static TYPE_AD:I = 0x1

.field public static TYPE_NORMAL:I


# instance fields
.field private isSkip:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget p1, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->TYPE_NORMAL:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->mType:I

    .line 363
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->mType:I

    .line 364
    iput-boolean p4, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->isSkip:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->mType:I

    return v0
.end method

.method public isSkip()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->isSkip:Z

    return v0
.end method

.method public setSkip(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->isSkip:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$GSYADVideoModel;->mType:I

    return-void
.end method
