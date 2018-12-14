.class Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MHVideoPlayer_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$6;->b:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$6;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
