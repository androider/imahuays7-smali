.class public Lcom/paginate/a/d$a;
.super Ljava/lang/Object;
.source "RecyclerPaginate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paginate/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Lcom/paginate/a$a;

.field private c:I

.field private d:Z

.field private e:Lcom/paginate/a/b;

.field private f:Lcom/paginate/a/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/paginate/a$a;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 159
    iput v0, p0, Lcom/paginate/a/d$a;->c:I

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/paginate/a/d$a;->d:Z

    .line 165
    iput-object p1, p0, Lcom/paginate/a/d$a;->a:Landroid/support/v7/widget/RecyclerView;

    .line 166
    iput-object p2, p0, Lcom/paginate/a/d$a;->b:Lcom/paginate/a$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/paginate/a/d$a;
    .locals 0

    .line 177
    iput p1, p0, Lcom/paginate/a/d$a;->c:I

    return-object p0
.end method

.method public a()Lcom/paginate/a;
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/paginate/a/d$a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter needs to be set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/paginate/a/d$a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LayoutManager needs to be set on the RecyclerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/paginate/a/d$a;->e:Lcom/paginate/a/b;

    if-nez v0, :cond_2

    .line 234
    sget-object v0, Lcom/paginate/a/b;->a:Lcom/paginate/a/b;

    iput-object v0, p0, Lcom/paginate/a/d$a;->e:Lcom/paginate/a/b;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/paginate/a/d$a;->f:Lcom/paginate/a/c;

    if-nez v0, :cond_3

    .line 238
    new-instance v0, Lcom/paginate/a/a;

    iget-object v1, p0, Lcom/paginate/a/d$a;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/paginate/a/a;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/paginate/a/d$a;->f:Lcom/paginate/a/c;

    .line 241
    :cond_3
    new-instance v0, Lcom/paginate/a/d;

    iget-object v3, p0, Lcom/paginate/a/d$a;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/paginate/a/d$a;->b:Lcom/paginate/a$a;

    iget v5, p0, Lcom/paginate/a/d$a;->c:I

    iget-boolean v6, p0, Lcom/paginate/a/d$a;->d:Z

    iget-object v7, p0, Lcom/paginate/a/d$a;->e:Lcom/paginate/a/b;

    iget-object v8, p0, Lcom/paginate/a/d$a;->f:Lcom/paginate/a/c;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/paginate/a/d;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/paginate/a$a;IZLcom/paginate/a/b;Lcom/paginate/a/c;)V

    return-object v0
.end method
