.class Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;
.super Ljava/lang/Object;
.source "QuickLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 160
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearCode:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearCode:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 179
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->h:Z

    .line 180
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g()V

    goto :goto_1

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iput-boolean v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->h:Z

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g()V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
