.class public Lcom/mh/movie/core/mvp/ui/holder/player/PlayerTagItemHolder;
.super Lcom/jess/arms/a/g;
.source "PlayerTagItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field tvPlayerItemTag:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c042e
    .end annotation
.end field


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerTagItemHolder;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 22
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerTagItemHolder;->tvPlayerItemTag:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
