.class public final Lcom/jess/arms/b/b/v;
.super Ljava/lang/Object;
.source "GlobalConfigModule_ProvideInterceptorsFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Ljava/util/List<",
        "Lokhttp3/Interceptor;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/b/n;


# direct methods
.method public constructor <init>(Lcom/jess/arms/b/b/n;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jess/arms/b/b/v;->a:Lcom/jess/arms/b/b/n;

    return-void
.end method

.method public static a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/b/v;
    .locals 1

    .line 28
    new-instance v0, Lcom/jess/arms/b/b/v;

    invoke-direct {v0, p0}, Lcom/jess/arms/b/b/v;-><init>(Lcom/jess/arms/b/b/n;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/jess/arms/b/b/v;->a:Lcom/jess/arms/b/b/n;

    invoke-virtual {v0}, Lcom/jess/arms/b/b/n;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/jess/arms/b/b/v;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
