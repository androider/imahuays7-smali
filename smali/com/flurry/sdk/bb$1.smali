.class final Lcom/flurry/sdk/bb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bb;
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
        "Lcom/flurry/sdk/bc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bb;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/bb$1;->a:Lcom/flurry/sdk/bb;

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
            "Lcom/flurry/sdk/bc;",
            ">;>;"
        }
    .end annotation

    .line 71
    new-instance p1, Lcom/flurry/sdk/dw;

    new-instance v0, Lcom/flurry/sdk/bc$a;

    invoke-direct {v0}, Lcom/flurry/sdk/bc$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/dw;-><init>(Lcom/flurry/sdk/dx;)V

    return-object p1
.end method
