.class Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$1;
.super Ljava/lang/Object;
.source "BindAliPayActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->c:[Z

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, v0, v1

    .line 83
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/BindAliPayActivity;)V

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
