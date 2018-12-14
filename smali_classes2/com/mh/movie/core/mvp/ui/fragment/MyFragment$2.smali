.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$2;
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

    .line 286
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 289
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$2;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
