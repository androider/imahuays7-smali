.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 339
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    if-eqz p1, :cond_1

    .line 340
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    invoke-interface {p1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;->a(Z)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$5;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->f(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u622a\u5c4f\u529f\u80fd\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-void
.end method
