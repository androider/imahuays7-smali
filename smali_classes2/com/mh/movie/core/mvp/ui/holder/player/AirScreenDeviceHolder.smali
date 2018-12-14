.class public Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;
.super Lcom/jess/arms/a/g;
.source "AirScreenDeviceHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field tvDeviceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c039e
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/jess/arms/a/g;-><init>(Landroid/view/View;)V

    .line 19
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/player/a;

    invoke-direct {v0, p0, p2}, Lcom/mh/movie/core/mvp/ui/holder/player/a;-><init>(Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;->a(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 28
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/player/AirScreenDeviceHolder;->tvDeviceName:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
