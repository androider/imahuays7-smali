.class Lcom/mh/movie/core/mvp/ui/adapter/d$1;
.super Ljava/lang/Object;
.source "EditableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/d;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/adapter/d;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/d;Ljava/lang/Object;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/d;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->a:Ljava/lang/Object;

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/d;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/d;->b:Z

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/d;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/d$1;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/d;->a(Ljava/lang/Object;I)V

    return-void
.end method
