.class public abstract Lcom/jess/arms/a/g;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/jess/arms/a/g$a;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/jess/arms/a/g;->a:Lcom/jess/arms/a/g$a;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/g;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {}, Lcom/jess/arms/c/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zhy/autolayout/utils/AutoUtils;->autoSize(Landroid/view/View;)V

    .line 41
    :cond_0
    invoke-static {p0, p1}, Lcom/jess/arms/c/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/jess/arms/a/g;->a:Lcom/jess/arms/a/g$a;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jess/arms/a/g;->a:Lcom/jess/arms/a/g$a;

    invoke-virtual {p0}, Lcom/jess/arms/a/g;->getPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jess/arms/a/g$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/jess/arms/a/g$a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/jess/arms/a/g;->a:Lcom/jess/arms/a/g$a;

    return-void
.end method
