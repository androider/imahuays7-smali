.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/w;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/w;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;->a()V

    return-void
.end method
