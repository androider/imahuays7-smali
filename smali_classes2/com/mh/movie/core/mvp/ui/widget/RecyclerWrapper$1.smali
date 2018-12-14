.class Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;
.super Ljava/lang/Object;
.source "RecyclerWrapper.java"

# interfaces
.implements Lin/srain/cube/views/ptr/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;Z)Z

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->b(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$a;->f()V

    :cond_1
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 103
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$1;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p2, p3}, Lin/srain/cube/views/ptr/a;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
