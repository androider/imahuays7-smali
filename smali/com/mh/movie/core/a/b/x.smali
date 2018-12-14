.class public final Lcom/mh/movie/core/a/b/x;
.super Ljava/lang/Object;
.source "CollectionModule_ProvideCollectionViewFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/a/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/v;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/v;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mh/movie/core/a/b/x;->a:Lcom/mh/movie/core/a/b/v;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/v;)Lcom/mh/movie/core/a/b/x;
    .locals 1

    .line 27
    new-instance v0, Lcom/mh/movie/core/a/b/x;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/x;-><init>(Lcom/mh/movie/core/a/b/v;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/a/h$b;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mh/movie/core/a/b/x;->a:Lcom/mh/movie/core/a/b/v;

    .line 23
    invoke-virtual {v0}, Lcom/mh/movie/core/a/b/v;->a()Lcom/mh/movie/core/mvp/a/h$b;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/h$b;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/x;->a()Lcom/mh/movie/core/mvp/a/h$b;

    move-result-object v0

    return-object v0
.end method
