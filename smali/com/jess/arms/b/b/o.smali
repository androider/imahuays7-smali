.class public final Lcom/jess/arms/b/b/o;
.super Ljava/lang/Object;
.source "GlobalConfigModule_ProvideBaseUrlFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lokhttp3/HttpUrl;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/b/n;


# direct methods
.method public constructor <init>(Lcom/jess/arms/b/b/n;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jess/arms/b/b/o;->a:Lcom/jess/arms/b/b/n;

    return-void
.end method

.method public static a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/b/o;
    .locals 1

    .line 26
    new-instance v0, Lcom/jess/arms/b/b/o;

    invoke-direct {v0, p0}, Lcom/jess/arms/b/b/o;-><init>(Lcom/jess/arms/b/b/n;)V

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/HttpUrl;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/jess/arms/b/b/o;->a:Lcom/jess/arms/b/b/n;

    .line 22
    invoke-virtual {v0}, Lcom/jess/arms/b/b/n;->c()Lokhttp3/HttpUrl;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 21
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/b/b/o;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method
