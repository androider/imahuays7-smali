.class Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;IIZ)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->d:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->a:I

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->b:I

    iput-boolean p4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1489
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->d:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->a:I

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->b:I

    iget-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(IIZ)V

    return-void
.end method
