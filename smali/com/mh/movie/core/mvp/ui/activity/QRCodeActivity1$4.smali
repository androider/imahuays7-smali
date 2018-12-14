.class Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;
.super Ljava/lang/Object;
.source "QRCodeActivity1.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 409
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->d(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$4;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->d(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
