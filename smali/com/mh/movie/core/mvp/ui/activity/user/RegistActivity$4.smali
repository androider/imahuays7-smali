.class Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$4;
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

    .line 266
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity$4;->a:Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;->ibClearCode:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
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
