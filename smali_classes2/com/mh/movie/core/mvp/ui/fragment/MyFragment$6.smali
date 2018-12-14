.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$6;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->p()V
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

    .line 721
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$6;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 724
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$6;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 725
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$6;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method
