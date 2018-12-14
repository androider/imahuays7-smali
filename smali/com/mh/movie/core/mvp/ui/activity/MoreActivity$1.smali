.class Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 79
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "videoType"

    .line 80
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
