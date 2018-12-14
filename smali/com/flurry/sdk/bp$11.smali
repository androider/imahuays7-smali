.class final Lcom/flurry/sdk/bp$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ea<",
        "Ljava/util/List<",
        "Lcom/flurry/sdk/bm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/flurry/sdk/bp$11;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/dx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/dx<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/bm;",
            ">;>;"
        }
    .end annotation

    .line 232
    new-instance p1, Lcom/flurry/sdk/dw;

    new-instance v0, Lcom/flurry/sdk/bm$a;

    invoke-direct {v0}, Lcom/flurry/sdk/bm$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/dw;-><init>(Lcom/flurry/sdk/dx;)V

    return-object p1
.end method
