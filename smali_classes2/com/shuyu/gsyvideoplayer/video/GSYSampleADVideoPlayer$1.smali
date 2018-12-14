.class Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$1;
.super Ljava/lang/Object;
.source "GSYSampleADVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/GSYSampleADVideoPlayer;->playNext()Z

    return-void
.end method
