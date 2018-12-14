.class public Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;
.super Lcom/jess/arms/a/g;
.source "UserItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jess/arms/a/g<",
        "Lcom/mh/movie/core/mvp/model/entity/User;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/jess/arms/b/a/a;

.field private d:Lcom/jess/arms/http/imageloader/c;

.field mAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0131
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c040d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/jess/arms/a/g;-><init>(Landroid/view/View;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->c:Lcom/jess/arms/b/a/a;

    .line 57
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->c:Lcom/jess/arms/b/a/a;

    invoke-interface {p1}, Lcom/jess/arms/b/a/a;->e()Lcom/jess/arms/http/imageloader/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->d:Lcom/jess/arms/http/imageloader/c;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->d:Lcom/jess/arms/http/imageloader/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->c:Lcom/jess/arms/b/a/a;

    invoke-interface {v1}, Lcom/jess/arms/b/a/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcom/jess/arms/http/imageloader/glide/h;->r()Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->mAvatar:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 84
    invoke-virtual {v2, v3}, Lcom/jess/arms/http/imageloader/glide/h$a;->a([Landroid/widget/ImageView;)Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/jess/arms/http/imageloader/glide/h$a;->a()Lcom/jess/arms/http/imageloader/glide/h;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/jess/arms/http/imageloader/c;->b(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->mAvatar:Landroid/widget/ImageView;

    .line 87
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->mName:Landroid/widget/TextView;

    .line 88
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->c:Lcom/jess/arms/b/a/a;

    .line 89
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->d:Lcom/jess/arms/http/imageloader/c;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/User;I)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/User;->getLogin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/ab;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/holder/ab;-><init>(Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;)V

    .line 63
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 66
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->d:Lcom/jess/arms/http/imageloader/c;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/jess/arms/http/imageloader/glide/h;->r()Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/User;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->a(Ljava/lang/String;)Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->mAvatar:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p1, v1}, Lcom/jess/arms/http/imageloader/glide/h$a;->a(Landroid/widget/ImageView;)Lcom/jess/arms/http/imageloader/glide/h$a;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/jess/arms/http/imageloader/glide/h$a;->a()Lcom/jess/arms/http/imageloader/glide/h;

    move-result-object p1

    .line 66
    invoke-virtual {p2, v0, p1}, Lcom/jess/arms/http/imageloader/c;->a(Landroid/content/Context;Lcom/jess/arms/http/imageloader/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 44
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/User;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->a(Lcom/mh/movie/core/mvp/model/entity/User;I)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/UserItemHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
