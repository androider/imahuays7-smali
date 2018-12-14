.class public final Lcom/jess/arms/b/b/h;
.super Ljava/lang/Object;
.source "ClientModule_ProvideClientBuilderFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lokhttp3/OkHttpClient$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/jess/arms/b/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/jess/arms/b/b/h;

    invoke-direct {v0}, Lcom/jess/arms/b/b/h;-><init>()V

    sput-object v0, Lcom/jess/arms/b/b/h;->a:Lcom/jess/arms/b/b/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/jess/arms/b/b/h;
    .locals 1

    .line 25
    sget-object v0, Lcom/jess/arms/b/b/h;->a:Lcom/jess/arms/b/b/h;

    return-object v0
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient$Builder;
    .locals 2

    .line 20
    invoke-static {}, Lcom/jess/arms/b/b/f;->b()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/b/b/h;->a()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method
