.class Lcom/jess/arms/a/i$1;
.super Ljava/lang/Object;
.source "DefaultAdapter.java"

# interfaces
.implements Lcom/jess/arms/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jess/arms/a/i;->a(Landroid/view/ViewGroup;I)Lcom/jess/arms/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jess/arms/a/i;


# direct methods
.method constructor <init>(Lcom/jess/arms/a/i;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jess/arms/a/i$1;->b:Lcom/jess/arms/a/i;

    iput p2, p0, Lcom/jess/arms/a/i$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/jess/arms/a/i$1;->b:Lcom/jess/arms/a/i;

    iget-object v0, v0, Lcom/jess/arms/a/i;->b:Lcom/jess/arms/a/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/i$1;->b:Lcom/jess/arms/a/i;

    iget-object v0, v0, Lcom/jess/arms/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/jess/arms/a/i$1;->b:Lcom/jess/arms/a/i;

    iget-object v0, v0, Lcom/jess/arms/a/i;->b:Lcom/jess/arms/a/i$a;

    iget v1, p0, Lcom/jess/arms/a/i$1;->a:I

    iget-object v2, p0, Lcom/jess/arms/a/i$1;->b:Lcom/jess/arms/a/i;

    iget-object v2, v2, Lcom/jess/arms/a/i;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/jess/arms/a/i$a;->a(Landroid/view/View;ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method
