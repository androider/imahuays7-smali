.class Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;
.super Ljava/lang/Object;
.source "AppleEditView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->b(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView$1;->a:Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;->a(Lcom/mh/movie/core/mvp/ui/widget/AppleEditView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method
