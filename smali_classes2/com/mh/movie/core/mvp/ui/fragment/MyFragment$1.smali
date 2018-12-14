.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->c:Z

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1$1;-><init>(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$a;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
