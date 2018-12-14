.class Lcom/mh/movie/core/a/a/v$f;
.super Ljava/lang/Object;
.source "DaggerCommentDetailComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/a/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/jess/arms/integration/IRepositoryManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/a/a;


# direct methods
.method constructor <init>(Lcom/jess/arms/b/a/a;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/mh/movie/core/a/a/v$f;->a:Lcom/jess/arms/b/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/jess/arms/integration/IRepositoryManager;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/a/a/v$f;->a:Lcom/jess/arms/b/a/a;

    .line 144
    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 143
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/integration/IRepositoryManager;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/mh/movie/core/a/a/v$f;->a()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    return-object v0
.end method
