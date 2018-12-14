.class Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;
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

    .line 138
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->c:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f:Z

    .line 151
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iput-boolean v2, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->f:Z

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->g()V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;->ibClearAll:Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

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
