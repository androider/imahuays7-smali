.class Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;
.super Ljava/lang/Object;
.source "ForgetPswActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const-string v0, "#####"

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearPsw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearPsw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 156
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearPsw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearPsw:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 163
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_2

    .line 164
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->g:Z

    .line 165
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e()V

    goto :goto_2

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iput-boolean v2, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->g:Z

    .line 168
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e()V

    :goto_2
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
