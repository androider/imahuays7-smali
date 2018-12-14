.class Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 363
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$4;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->d(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
