.class public Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;
.super Ljava/lang/Object;
.source "BindBankActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;I)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->c:[Z

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->b:I

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    aput-boolean v2, v0, v1

    .line 263
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->b:I

    if-nez v0, :cond_2

    .line 264
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->ivClearInput:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->b(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->ivClearInput:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity$a;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->c(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;)V

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
