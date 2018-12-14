.class public Lcom/mh/movie/core/mvp/ui/holder/player/TVPartItemHolder;
.super Lcom/jess/arms/a/g;
.source "TVPartItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field tvPlayerTvPartItem:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0075
    .end annotation
.end field


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/player/TVPartItemHolder;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/TVPartItemHolder;->tvPlayerTvPartItem:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
