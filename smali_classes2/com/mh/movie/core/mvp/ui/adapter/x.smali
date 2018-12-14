.class public Lcom/mh/movie/core/mvp/ui/adapter/x;
.super Lcom/jess/arms/a/i;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/i<",
        "Lcom/mh/movie/core/mvp/model/entity/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/jess/arms/a/i;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 50
    sget p1, Lcom/mh/movie/core/R$layout;->recycle_list:I

    return p1
.end method

.method public a(Landroid/view/View;I)Lcom/jess/arms/a/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/jess/arms/a/g<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;

    invoke-direct {p2, p1}, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
