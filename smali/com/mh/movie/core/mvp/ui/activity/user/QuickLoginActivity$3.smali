.class Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;
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

    .line 188
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearPsw:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearPsw:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const-string v0, "#####"

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    .line 208
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g:Z

    .line 209
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g()V

    goto :goto_1

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iput-boolean v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g:Z

    .line 212
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

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
