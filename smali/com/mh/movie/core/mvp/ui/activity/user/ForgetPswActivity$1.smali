.class Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;
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

    .line 110
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearAll:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearAll:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x3

    .line 128
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->f:Z

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e()V

    goto :goto_1

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    iput-boolean v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->f:Z

    .line 133
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->e()V

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
