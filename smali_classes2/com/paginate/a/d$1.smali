.class Lcom/paginate/a/d$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerPaginate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paginate/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/paginate/a/d;


# direct methods
.method constructor <init>(Lcom/paginate/a/d;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/paginate/a/d$1;->a:Lcom/paginate/a/d;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/paginate/a/d$1;->a:Lcom/paginate/a/d;

    invoke-virtual {p1}, Lcom/paginate/a/d;->a()V

    return-void
.end method
