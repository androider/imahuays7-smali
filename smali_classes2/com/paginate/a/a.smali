.class Lcom/paginate/a/a;
.super Ljava/lang/Object;
.source "DefaultLoadingListItemSpanLookup.java"

# interfaces
.implements Lcom/paginate/a/c;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    iput p1, p0, Lcom/paginate/a/a;->a:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/paginate/a/a;->a:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/paginate/a/a;->a:I

    return v0
.end method
