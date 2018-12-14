.class public Lcom/mh/movie/core/mvp/ui/adapter/player/a;
.super Lcom/jess/arms/a/i;
.source "AirScreenDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/i<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/jess/arms/a/i;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 36
    sget p1, Lcom/mh/movie/core/R$layout;->item_air_screen_device:I

    return p1
.end method

.method public a(Landroid/view/View;I)Lcom/jess/arms/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lcom/jess/arms/a/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance p2, Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/player/b;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/adapter/player/b;-><init>(Lcom/mh/movie/core/mvp/ui/adapter/player/a;)V

    invoke-direct {p2, p1, v0}, Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;-><init>(Landroid/view/View;Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;)V

    return-object p2
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/a;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;

    return-void
.end method

.method final synthetic b(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/a;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/player/a;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;->a(I)V

    :cond_0
    return-void
.end method
