.class final Lcom/paginate/a/b$1;
.super Ljava/lang/Object;
.source "LoadingListItemCreator.java"

# interfaces
.implements Lcom/paginate/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paginate/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/paginate/R$layout;->loading_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/paginate/a/b$1$1;

    invoke-direct {p2, p0, p1}, Lcom/paginate/a/b$1$1;-><init>(Lcom/paginate/a/b$1;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
