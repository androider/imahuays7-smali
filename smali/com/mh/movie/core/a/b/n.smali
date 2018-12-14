.class public final Lcom/mh/movie/core/a/b/n;
.super Ljava/lang/Object;
.source "BindAliPayModule_ProvideBindAliPayModelFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/a/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mh/movie/core/a/b/m;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/BindAliPayModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/a/b/m;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/a/b/m;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/BindAliPayModel;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/a/b/n;->a:Lcom/mh/movie/core/a/b/m;

    .line 23
    iput-object p2, p0, Lcom/mh/movie/core/a/b/n;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/a/b/m;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/a/b/m;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/BindAliPayModel;",
            ">;)",
            "Lcom/mh/movie/core/a/b/n;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/mh/movie/core/a/b/n;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/a/b/n;-><init>(Lcom/mh/movie/core/a/b/m;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/a/e$a;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/mh/movie/core/a/b/n;->a:Lcom/mh/movie/core/a/b/m;

    iget-object v1, p0, Lcom/mh/movie/core/a/b/n;->b:Ljavax/inject/Provider;

    .line 29
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/BindAliPayModel;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/a/b/m;->a(Lcom/mh/movie/core/mvp/model/BindAliPayModel;)Lcom/mh/movie/core/mvp/a/e$a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/e$a;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/mh/movie/core/a/b/n;->a()Lcom/mh/movie/core/mvp/a/e$a;

    move-result-object v0

    return-object v0
.end method
