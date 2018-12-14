.class Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$2;
.super Ljava/lang/Object;
.source "ProjectionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;->a()V

    :cond_0
    return-void
.end method
