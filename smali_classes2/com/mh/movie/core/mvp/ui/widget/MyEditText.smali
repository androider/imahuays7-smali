.class public Lcom/mh/movie/core/mvp/ui/widget/MyEditText;
.super Landroid/widget/EditText;
.source "MyEditText.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 43
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->a:Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->a:Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;

    invoke-interface {p1, p0}, Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;->a(Landroid/widget/TextView;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setBackListener(Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/MyEditText;->a:Lcom/mh/movie/core/mvp/ui/widget/MyEditText$a;

    return-void
.end method
