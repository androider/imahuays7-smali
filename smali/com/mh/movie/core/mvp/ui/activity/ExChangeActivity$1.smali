.class Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$1;
.super Ljava/lang/Object;
.source "ExChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 143
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/MallWebViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "data"

    const-string v1, ""

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
