.class public Lcom/mh/movie/core/mvp/model/player/PlayerModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "PlayerModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/b/b$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/model/b/d;

.field e:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 42
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/d;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/d;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    .line 43
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->b(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/b/d;->a(II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(III)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/model/b/d;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/model/b/d;->a(IIII)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mh/movie/core/mvp/model/b/d;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;II)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    move v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mh/movie/core/mvp/model/b/d;->a(IIILjava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/b/d;->a(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mh/movie/core/mvp/model/b/d;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->d(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->b:Lcom/google/gson/e;

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->c:Landroid/app/Application;

    return-void
.end method

.method public b()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->k()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/model/b/d;->b(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->b(Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/d;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->b(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/b/g;->j()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->c(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->e:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->d(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public f(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->d(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
