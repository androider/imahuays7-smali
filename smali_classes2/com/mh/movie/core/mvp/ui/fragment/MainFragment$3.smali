.class Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 423
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
