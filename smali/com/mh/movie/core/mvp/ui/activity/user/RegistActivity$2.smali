.class Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode2:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x3

    .line 225
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->g:Z

    .line 227
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f()V

    goto :goto_1

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iput-boolean v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->g:Z

    .line 230
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$2;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f()V

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
