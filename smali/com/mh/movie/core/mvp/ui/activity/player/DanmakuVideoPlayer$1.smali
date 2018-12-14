.class Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$1;
.super Ljava/lang/Object;
.source "DanmakuVideoPlayer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
