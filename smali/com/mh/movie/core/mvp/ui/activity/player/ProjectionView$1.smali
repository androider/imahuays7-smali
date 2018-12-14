.class Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;
.super Ljava/lang/Object;
.source "ProjectionView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->k()V
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

    .line 189
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)I

    move-result v1

    mul-int p1, p1, v1

    div-int/lit8 p1, p1, 0x64

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;I)I

    .line 203
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/a;->b(I)V

    return-void
.end method
