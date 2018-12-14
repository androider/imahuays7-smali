.class Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;
.super Ljava/lang/Object;
.source "VipActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 255
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->r:Landroid/content/Context;

    const-class v3, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/VipActivity;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
