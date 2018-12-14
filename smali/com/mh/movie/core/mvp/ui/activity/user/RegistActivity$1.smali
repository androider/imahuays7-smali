.class Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;
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

    .line 183
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearAll:Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget v0, v0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->c:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f:Z

    .line 198
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e()V

    goto :goto_1

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iput-boolean v2, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->f:Z

    .line 201
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->e()V

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
