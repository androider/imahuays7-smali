.class Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$4;
.super Ljava/lang/Object;
.source "RecyclerWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;
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

    .line 343
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$4;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 346
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper$4;->a:Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;->f(Lcom/mh/movie/core/mvp/ui/widget/RecyclerWrapper;)Lin/srain/cube/views/ptr/PtrClassicFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->d()V

    return-void
.end method
