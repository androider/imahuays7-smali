.class Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;
.super Ljava/lang/Object;
.source "ModifyPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v0, "#####"

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;Z)Z

    .line 142
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->f()V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;Z)Z

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity$3;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->f()V

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
