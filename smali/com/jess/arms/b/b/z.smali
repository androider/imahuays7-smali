.class public final Lcom/jess/arms/b/b/z;
.super Ljava/lang/Object;
.source "GlobalConfigModule_ProvideRetrofitConfigurationFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/jess/arms/b/b/f$c;",
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
    iput-object p1, p0, Lcom/jess/arms/b/b/z;->a:Lcom/jess/arms/b/b/n;

    return-void
.end method

.method public static a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/b/z;
    .locals 1

    .line 27
    new-instance v0, Lcom/jess/arms/b/b/z;

    invoke-direct {v0, p0}, Lcom/jess/arms/b/b/z;-><init>(Lcom/jess/arms/b/b/n;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/jess/arms/b/b/f$c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/jess/arms/b/b/z;->a:Lcom/jess/arms/b/b/n;

    invoke-virtual {v0}, Lcom/jess/arms/b/b/n;->g()Lcom/jess/arms/b/b/f$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/jess/arms/b/b/z;->a()Lcom/jess/arms/b/b/f$c;

    move-result-object v0

    return-object v0
.end method
