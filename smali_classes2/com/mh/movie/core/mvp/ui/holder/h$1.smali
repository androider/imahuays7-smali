.class Lcom/mh/movie/core/mvp/ui/holder/h$1;
.super Lcom/mh/movie/core/mvp/ui/widget/a/c;
.source "CommentViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/holder/h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/holder/h;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/h;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/h$1;->a:Lcom/mh/movie/core/mvp/ui/holder/h;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/h$1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/h$1;->a:Lcom/mh/movie/core/mvp/ui/holder/h;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->m:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/h$1;->a:Lcom/mh/movie/core/mvp/ui/holder/h;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/h;->m:Lcom/mh/movie/core/mvp/ui/holder/h$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/h$1;->a:Lcom/mh/movie/core/mvp/ui/holder/h;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/holder/h;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/h$a;->a(I)V

    :cond_0
    return-void
.end method
