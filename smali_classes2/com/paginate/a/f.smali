.class Lcom/paginate/a/f;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "WrapperSpanSizeLookup.java"


# instance fields
.field private final a:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field private final b:Lcom/paginate/a/c;

.field private final c:Lcom/paginate/a/e;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;Lcom/paginate/a/c;Lcom/paginate/a/e;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/paginate/a/f;->a:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 15
    iput-object p2, p0, Lcom/paginate/a/f;->b:Lcom/paginate/a/c;

    .line 16
    iput-object p3, p0, Lcom/paginate/a/f;->c:Lcom/paginate/a/e;

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/paginate/a/f;->c:Lcom/paginate/a/e;

    invoke-virtual {v0, p1}, Lcom/paginate/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object p1, p0, Lcom/paginate/a/f;->b:Lcom/paginate/a/c;

    invoke-interface {p1}, Lcom/paginate/a/c;->a()I

    move-result p1

    return p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/paginate/a/f;->a:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method
