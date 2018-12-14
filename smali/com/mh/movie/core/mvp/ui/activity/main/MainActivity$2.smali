.class Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    .line 291
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g()V

    return-void
.end method
