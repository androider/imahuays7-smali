.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/zxing/activity/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)V

    :goto_0
    return-void
.end method
