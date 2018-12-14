.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/j;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/j;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->F()V

    return-void
.end method
