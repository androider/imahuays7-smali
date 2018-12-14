.class public abstract Lcom/mh/movie/core/mvp/ui/activity/player/view/a;
.super Ljava/lang/Object;
.source "BasePlayerDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field protected c:Landroid/view/View;

.field protected d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->b:Landroid/content/Context;

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->c:Landroid/view/View;

    .line 21
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->d()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/player/view/d;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract b()I
.end method

.method protected c()I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->b()I

    move-result v0

    return v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->c()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->c:Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->d()V

    .line 57
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->e()V

    return-void
.end method

.method public g()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->c:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->d()V

    .line 66
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->e()V

    return-void
.end method
