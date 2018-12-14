.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/v;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/v;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;->b()V

    return-void
.end method
