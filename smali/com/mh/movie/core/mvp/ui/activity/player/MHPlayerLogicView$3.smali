.class Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;
.super Ljava/lang/Object;
.source "MHPlayerLogicView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->h:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->a:I

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->b:I

    iput p4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->c:I

    iput p5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->d:I

    iput-object p6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 345
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->h:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {v0}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->h:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;->d()V

    .line 349
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->h:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->b(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->a:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->b:I

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->c:I

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->d:I

    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$3;->g:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Landroid/content/Context;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
