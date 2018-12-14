.class Lcom/mh/movie/core/mvp/ui/holder/d$1;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/holder/d;-><init>(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/holder/d;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/d;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/d$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/d$1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/d$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/d;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/d$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/d;->j:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/d$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/holder/d;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    :cond_0
    return-void
.end method
