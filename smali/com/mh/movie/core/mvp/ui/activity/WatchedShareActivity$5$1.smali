.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5$1;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5$1;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2Album(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    return-void
.end method
