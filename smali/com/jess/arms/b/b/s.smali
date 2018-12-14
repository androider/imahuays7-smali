.class public final Lcom/jess/arms/b/b/s;
.super Ljava/lang/Object;
.source "GlobalConfigModule_ProvideGlobalHttpHandlerFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/http/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/b/n;


# direct methods
.method public constructor <init>(Lcom/jess/arms/b/b/n;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jess/arms/b/b/s;->a:Lcom/jess/arms/b/b/n;

    return-void
.end method

.method public static a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/b/s;
    .locals 1

    .line 28
    new-instance v0, Lcom/jess/arms/b/b/s;

    invoke-direct {v0, p0}, Lcom/jess/arms/b/b/s;-><init>(Lcom/jess/arms/b/b/n;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/jess/arms/http/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/jess/arms/b/b/s;->a:Lcom/jess/arms/b/b/n;

    invoke-virtual {v0}, Lcom/jess/arms/b/b/n;->e()Lcom/jess/arms/http/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/b/b/s;->a()Lcom/jess/arms/http/b;

    move-result-object v0

    return-object v0
.end method
