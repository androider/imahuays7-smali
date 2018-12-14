.class Lcom/mh/movie/core/a/a/aj$c;
.super Ljava/lang/Object;
.source "DaggerLikeComponent.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/a/a/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/a/a;


# direct methods
.method constructor <init>(Lcom/jess/arms/b/a/a;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/mh/movie/core/a/a/aj$c;->a:Lcom/jess/arms/b/a/a;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/a/a/aj$c;->a:Lcom/jess/arms/b/a/a;

    .line 169
    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 168
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/mh/movie/core/a/a/aj$c;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
