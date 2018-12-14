.class public final Lcom/jess/arms/b/b/j;
.super Ljava/lang/Object;
.source "ClientModule_ProvideRetrofitBuilderFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lretrofit2/Retrofit$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/jess/arms/b/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/jess/arms/b/b/j;

    invoke-direct {v0}, Lcom/jess/arms/b/b/j;-><init>()V

    sput-object v0, Lcom/jess/arms/b/b/j;->a:Lcom/jess/arms/b/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/jess/arms/b/b/j;
    .locals 1

    .line 24
    sget-object v0, Lcom/jess/arms/b/b/j;->a:Lcom/jess/arms/b/b/j;

    return-object v0
.end method


# virtual methods
.method public a()Lretrofit2/Retrofit$Builder;
    .locals 2

    .line 19
    invoke-static {}, Lcom/jess/arms/b/b/f;->a()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit$Builder;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/b/b/j;->a()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method
