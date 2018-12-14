.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->e(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2Album(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    :goto_0
    return-void
.end method
