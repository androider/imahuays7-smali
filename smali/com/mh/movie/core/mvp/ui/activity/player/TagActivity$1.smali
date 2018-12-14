.class Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity$1;
.super Ljava/lang/Object;
.source "TagActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/adapter/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 71
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "videoInfoId"

    .line 72
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;

    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->e:I

    invoke-virtual {p1, v0, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;->finish()V

    return-void
.end method
