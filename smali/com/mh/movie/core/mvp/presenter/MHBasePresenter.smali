.class public Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.super Lcom/jess/arms/mvp/BasePresenter;
.source "MHBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/jess/arms/mvp/a;",
        "V::",
        "Lcom/jess/arms/mvp/c;",
        ">",
        "Lcom/jess/arms/mvp/BasePresenter<",
        "TM;TV;>;"
    }
.end annotation


# instance fields
.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TV;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/jess/arms/mvp/BasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/jess/arms/mvp/c;)Lio/reactivex/ObservableTransformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/jess/arms/mvp/c;",
            ")",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Ljava/lang/String;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Ljava/lang/String;Z)Lio/reactivex/ObservableTransformer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/jess/arms/mvp/c;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 41
    new-instance p1, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;

    invoke-direct {p1, p0, p4, p3, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;ZLjava/lang/String;Lcom/jess/arms/mvp/c;)V

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/jess/arms/mvp/c;",
            "Z)",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    const-string v0, ""

    .line 30
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Ljava/lang/String;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    return-object p1
.end method
