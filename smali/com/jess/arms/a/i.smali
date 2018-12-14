.class public abstract Lcom/jess/arms/a/i;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DefaultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/jess/arms/a/g<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/jess/arms/a/i$a;

.field private c:Lcom/jess/arms/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jess/arms/a/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/jess/arms/a/i;->b:Lcom/jess/arms/a/i$a;

    .line 41
    iput-object p1, p0, Lcom/jess/arms/a/i;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 129
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    instance-of v2, v1, Lcom/jess/arms/a/g;

    if-eqz v2, :cond_1

    .line 132
    check-cast v1, Lcom/jess/arms/a/g;

    invoke-virtual {v1}, Lcom/jess/arms/a/g;->a()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract a(Landroid/view/View;I)Lcom/jess/arms/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/jess/arms/a/g<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/jess/arms/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/jess/arms/a/g<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/jess/arms/a/i;->a(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/a/i;->a(Landroid/view/View;I)Lcom/jess/arms/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/a/i;->c:Lcom/jess/arms/a/g;

    .line 55
    iget-object p1, p0, Lcom/jess/arms/a/i;->c:Lcom/jess/arms/a/g;

    new-instance v0, Lcom/jess/arms/a/i$1;

    invoke-direct {v0, p0, p2}, Lcom/jess/arms/a/i$1;-><init>(Lcom/jess/arms/a/i;I)V

    invoke-virtual {p1, v0}, Lcom/jess/arms/a/g;->setOnItemClickListener(Lcom/jess/arms/a/g$a;)V

    .line 63
    iget-object p1, p0, Lcom/jess/arms/a/i;->c:Lcom/jess/arms/a/g;

    return-object p1
.end method

.method public a(Lcom/jess/arms/a/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jess/arms/a/g<",
            "TT;>;I)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/jess/arms/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/jess/arms/a/g;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jess/arms/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/jess/arms/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/a/i;->a(Lcom/jess/arms/a/g;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/jess/arms/a/i;->a(Landroid/view/ViewGroup;I)Lcom/jess/arms/a/g;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/jess/arms/a/i$a;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/jess/arms/a/i;->b:Lcom/jess/arms/a/i$a;

    return-void
.end method
