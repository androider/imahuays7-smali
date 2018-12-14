.class public final Lcom/mh/movie/core/a/b/h;
.super Ljava/lang/Object;
.source "AllModule_ProvideAllModelFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/a/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/g;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/AllModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/g;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/a/b/g;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/AllModel;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mh/movie/core/a/b/h;->a:Lcom/mh/movie/core/a/b/g;

    .line 21
    iput-object p2, p0, Lcom/mh/movie/core/a/b/h;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/g;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/a/b/g;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/AllModel;",
            ">;)",
            "Lcom/mh/movie/core/a/b/h;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/mh/movie/core/a/b/h;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/a/b/h;-><init>(Lcom/mh/movie/core/a/b/g;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/a/c$a;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/mh/movie/core/a/b/h;->a:Lcom/mh/movie/core/a/b/g;

    iget-object v1, p0, Lcom/mh/movie/core/a/b/h;->b:Ljavax/inject/Provider;

    .line 27
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/AllModel;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/a/b/g;->a(Lcom/mh/movie/core/mvp/model/AllModel;)Lcom/mh/movie/core/mvp/a/c$a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 26
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/c$a;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/h;->a()Lcom/mh/movie/core/mvp/a/c$a;

    move-result-object v0

    return-object v0
.end method
