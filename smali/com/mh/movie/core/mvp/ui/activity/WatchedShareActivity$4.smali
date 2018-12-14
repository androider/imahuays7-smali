.class Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;
.super Ljava/lang/Object;
.source "WatchedShareActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->onClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;I)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    move-result-object p1

    if-nez p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 255
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->f()V

    .line 264
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(I)V

    goto :goto_0

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;->b:Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    :goto_0
    return-void
.end method
