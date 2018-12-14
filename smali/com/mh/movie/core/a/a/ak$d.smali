.class Lcom/mh/movie/core/a/a/ak$d;
.super Ljava/lang/Object;
.source "DaggerMainComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/a/a/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/google/gson/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/a/a;


# direct methods
.method constructor <init>(Lcom/jess/arms/b/a/a;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/mh/movie/core/a/a/ak$d;->a:Lcom/jess/arms/b/a/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/e;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ak$d;->a:Lcom/jess/arms/b/a/a;

    .line 154
    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->g()Lcom/google/gson/e;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 153
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/e;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/mh/movie/core/a/a/ak$d;->a()Lcom/google/gson/e;

    move-result-object v0

    return-object v0
.end method
