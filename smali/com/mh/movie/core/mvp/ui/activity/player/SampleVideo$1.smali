.class Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;
.super Ljava/lang/Object;
.source "SampleVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I

    goto :goto_0

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v0, :cond_4

    .line 95
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I

    goto :goto_0

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 97
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I

    .line 99
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->c(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    return-void
.end method
