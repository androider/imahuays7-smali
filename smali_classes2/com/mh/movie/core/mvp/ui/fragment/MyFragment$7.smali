.class Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$7;
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

    .line 716
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$7;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 719
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment$7;->a:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method
