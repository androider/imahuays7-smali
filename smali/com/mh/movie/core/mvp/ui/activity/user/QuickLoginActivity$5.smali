.class Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;
.super Ljava/lang/Object;
.source "QuickLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 238
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$5;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->finish()V

    return-void
.end method
