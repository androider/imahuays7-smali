.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/a;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/a;->a:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer;->a(Landroid/view/View;Z)V

    return-void
.end method
