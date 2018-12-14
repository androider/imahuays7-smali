.class Lcom/mh/movie/core/mvp/ui/holder/r$1;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "ProjectViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/holder/r;-><init>(Landroid/view/ViewGroup;IIILcom/mh/movie/core/mvp/ui/holder/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/holder/r;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/r;Lcom/mh/movie/core/mvp/ui/holder/d$a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r$1;->b:Lcom/mh/movie/core/mvp/ui/holder/r;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/r$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/r$1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/r$1;->a:Lcom/mh/movie/core/mvp/ui/holder/d$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/r$1;->b:Lcom/mh/movie/core/mvp/ui/holder/r;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/holder/r;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/d$a;->a(I)V

    :cond_0
    return-void
.end method
